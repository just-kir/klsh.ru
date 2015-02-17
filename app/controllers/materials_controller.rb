class MaterialsController < ApplicationController

before_filter :authenticate_user!, :except => [:index]

def index
  @materials = Material.order("created_at desc")
end

def new
  @material = Material.new  
end

def show
  @material = Material.find(params[:id])
end

def create
  	@material = Material.new(material_params)
  	@material.save
  	if @material.save
  		redirect_to materials_path
  	else
  		render 'new'
  	end		
end	

def edit
  @material = Material.find(params[:id])

end

def update
  @material = Material.find(params[:id])
 
  if @material.update(material_params)
    redirect_to materials_path
  else
    render 'edit'
  end
end

def destroy
  @material = Material.find(params[:id])
  @material.destroy
 
  redirect_to materials_path
end

private
  def material_params
    params.require(:material).permit(:author, :position, :title, :annotation,
    :ntn, :nen, :nfn, :non, :year, :link)
  end


end
