class DocsController < ApplicationController
  layout 'base'
def index
  @docs = Doc.all
end

def new
  @doc = Doc.new  
end

def show
  @doc = Doc.find(params[:id])
end


def create
  @doc = Doc.new(doc_params)
  @doc.save
  if @doc.save
    respond_to do |format|
      format.html { redirect_to docs_url }
      format.js
    end
  else
    render :js => "alert('Ошибка записи. Возможно, какое-то из полей пусто.');" 
  end 
end

def edit
  @doc = Doc.find(params[:id])
end

def update
  @doc = Doc.find(params[:id])
 
  if @doc.update(doc_params)
    redirect_to @doc
  else
    render 'edit'
  end
end

def destroy
  @doc = Doc.find(params[:id])
  @doc.destroy
 
  redirect_to docs_path
end

private
  def doc_params
    params.require(:doc).permit(:name, :link, :title, :description)
  end

end
