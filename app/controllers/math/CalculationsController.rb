class CalculationsController < ApplicationController
  def new_square
  end

  def square_results
    @number = params[:users_number].to_f
    @result = @number ** 2
  end

  def new_square_root
  end

  def square_root_results
    @number = params[:users_number].to_f
    @result = Math.sqrt(@number)
  end

  def new_payment
  end

  def payment_results
    apr = params[:apr].to_f
    years = params[:years].to_i
    principal = params[:principal].to_f
    apr_monthly = apr / 100 / 12

    numerator = apr_monthly * principal
    denominator = 1 - (1 + apr_monthly)**(-years * 12)
    @result = (numerator / denominator).round(2)

    @percent_apr = format('%.4f%%', apr)
  end

  def new_random
  end

  def random_results
    @min = params[:min].to_f
    @max = params[:max].to_f
    @random_number = rand(@min..@max)
  end
end
