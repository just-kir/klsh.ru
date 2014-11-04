class ReportsController < ApplicationController
  layout 'base'
def index
  @reports = Report.order("created_at desc")
end

def new
  @report = Report.new  
end

def show
  @report = Report.find(params[:id])
end


def create
  @report = Report.new(report_params)
  @report.save
  if @report.save
    respond_to do |format|
      format.html { redirect_to reports_url }
      format.js
    end
  else
    render :js => "alert('Ошибка записи. Возможно, какое-то из полей пусто.');" 
  end 
end

def edit
  @report = Report.find(params[:id])
end

def update
  @report = Report.find(params[:id])
 
  if @report.update(report_params)
    redirect_to @report
  else
    render 'edit'
  end
end

def destroy
  @report = Report.find(params[:id])
  @report.destroy
 
  redirect_to reports_path
end

private
  def report_params
    params.require(:report).permit(:name, :text)
  end


end
