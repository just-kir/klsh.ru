class ElephantsController < ApplicationController
  layout 'base'
def index
  @elephants = Elephant.order("created_at desc")
end

def new
  @elephant = Elephant.new  
end

def show
  @elephant = Elephant.find(params[:id])
end


def create
  @elephant = Elephant.new(elephant_params)
  @elephant.save
  if @elephant.save
    respond_to do |format|
      format.html { redirect_to elephants_url }
      format.js
    end
  else
    render :js => "alert('Ошибка записи. Возможно, какое-то из полей пусто.');" 
  end 
end

def edit
  @elephant = Elephant.find(params[:id])
end

def update
  @elephant = Elephant.find(params[:id])
 
  if @elephant.update(elephant_params)
    redirect_to @elephant
  else
    render 'edit'
  end
end

def destroy
  @elephant = Elephant.find(params[:id])
  @elephant.destroy
 
  redirect_to elephants_path
end

private
  def elephant_params
    params.require(:elephant).permit(:name, :link, :title, :ntn, :nen, :non, :nfn, :description)
  end


end
