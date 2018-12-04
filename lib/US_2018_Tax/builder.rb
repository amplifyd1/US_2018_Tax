module US_2018_Tax

  class Tax
    def initialize(net_income)
      @net_income = net_income
    end

    def calculate
      return calculate_tax(@net_income) if income_numeric?
    end

    def income_numeric?
      (@net_income.is_a? Numeric || @net_income.integer?)
    end

    def calculate_tax(net_income)
      case
      when net_income <= 9525
        first_bracket(net_income)
      when net_income <= 38_700
        second_bracket(net_income)
      when net_income <= 82_500
        third_bracket(net_income)
      when net_income <= 157_500
        fourth_bracket(net_income)
      when net_income <= 200_000
        fifth_bracket(net_income)
      when net_income <= 500_000
        sixth_bracket(net_income)
      when net_income >= 500_001
        seventh_bracket(net_income)
      end
    end

    def calculate_with_standard_deduction
      standard_deduction = 12_000
      net_income = @net_income - standard_deduction
      calculate_tax(net_income) if income_numeric?
    end

    def gross_income
      @net_income - calculate_tax(@net_income)
    end

    def gross_with_deduction
      @net_income - calculate_with_standard_deduction
    end

    private

    def first_bracket(net_income)
      net_income * 0.10
    end

    def second_bracket(net_income)
      (952.50 + (net_income - 9_525) * 0.12).round(2)
    end

    def third_bracket(net_income)
      (4453.50 + (net_income - 38_700) * 0.22).round(2)
    end

    def fourth_bracket(net_income)
      (14_089.50 + (net_income - 82_500) * 0.24).round(2)
    end

    def fifth_bracket(net_income)
      (32_089.50 + (net_income - 157_500) * 0.32).round(2)
    end

    def sixth_bracket(net_income)
      (45_689.50 + (net_income - 200_000) * 0.35).round(2)
    end

    def seventh_bracket(net_income)
      (150_689.50 + (net_income - 500_000) * 0.37).round(2)
    end
  end
end
