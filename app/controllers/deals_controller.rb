class DealsController < ApplicationController

  def index
    @transactions = Deal.all
    @total = 0
    respond_to do |format|
      format.html
      format.csv { send_data @transactions.to_csv }
    end
  end

  def import
    Deal.import(params[:file])
    redirect_to root_url, notice: "Products imported!"
  end

end
