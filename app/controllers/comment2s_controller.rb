class Comment2sController < ApplicationController
def create
    @elephant = Elephant.find(params[:elephant_id])
    @comment = @elephant.comment2s.create(params[:comment2].permit(:commenter, :body))
    redirect_to elephant_path(@elephant)
end
def destroy
    @elephant = Elephant.find(params[:elephant_id])
    @comment = @elephant.comment2s.find(params[:id])
    @comment.destroy
    redirect_to elephant_path(@elephant)
end    
end
