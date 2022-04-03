class SimpleCalculator
  ALLOWED_OPERATIONS = ["+", "/", "*"].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation if !ALLOWED_OPERATIONS.include?(operation)

    if !first_operand.is_a?(Integer) || !second_operand.is_a?(Integer)
      raise ArgumentError
    end

    begin
      result = first_operand.method(operation).(second_operand)
    rescue ZeroDivisionError
      return "Division by zero is not allowed."
    end
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end

# SimpleCalculator.calculate(1, 2, "*")
