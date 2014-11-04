class QuotesController < ApplicationController

def index
  @quotes = Quote.all
end

def new
  @quote = Quote.new	
end

def show
  @quote = Quote.find(params[:id])
end


def create
  @quote = Quote.new(quote_params)
  @quote.save
  if @quote.save
  	respond_to do |format|
  	  format.html { redirect_to quotes_url }
  	  format.js
  	end
  else
  	render :js => "alert('Ошибка записи. Возможно, какое-то из полей пусто.');"	
  end	
end

def edit
  @quote = Quote.find(params[:id])
end

def update
  @quote = Quote.find(params[:id])
 
  if @quote.update(quote_params)
    redirect_to @quote
  else
    render 'edit'
  end
end

def destroy
  @quote = Quote.find(params[:id])
  @quote.destroy
 
  redirect_to quotes_path
end

private
  def quote_params
    params.require(:quote).permit(:author, :text)
  end

end
