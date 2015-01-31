class Comment4sController < ApplicationController
def create
    @doc = Doc.find(params[:doc_id])
    @comment = @doc.comment4s.create(params[:comment4].permit(:commenter, :body))
    redirect_to doc_path(@doc)
end
def destroy
    @doc = Doc.find(params[:doc_id])
    @comment = @doc.comment4s.find(params[:id])
    @comment.destroy
    redirect_to doc_path(@doc)
end    
end
