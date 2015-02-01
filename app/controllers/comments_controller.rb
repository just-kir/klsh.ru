class CommentsController < ApplicationController
def create
    @report = Report.find(params[:report_id])
    @comment = @report.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to report_path(@report)
end
def destroy
    @report = Report.find(params[:report_id])
    @comment = @report.comments.find(params[:id])
    @comment.destroy
    redirect_to report_path(@report)
  end
end
