class HomeController < ApplicationController
  def index
    # @stock = StockQuote::Stock.quote("symbol")
    if params[:id] == ''
      @nothing = 'Please specify a symbol'
    elsif
      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = 'Symbol does not exist'
        end
      end
    end
  end
  
  def about
  end
end
