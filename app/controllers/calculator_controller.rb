# app/controllers/calculator_controller.rb

class CalculatorController < ApplicationController
  def index
  end

  def calculate
    num1 = params[:num1].to_f
    num2 = params[:num2].to_f
    operator = params[:operator]

    case operator
    when '+'
      @result = num1 + num2
    when '-'
      @result = num1 - num2
    when '*'
      @result = num1 * num2
    when '/'
      @result = num1 / num2
    else
      @result = 'Invalid Operator'
    end
    respond_to do |format|
      format.html { render :'calculator/calculate' }
    end
  end

end
