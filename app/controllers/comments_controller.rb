class CommentsController < ApplicationController

  def create
    puts " ======= PARAMS Comment Create"
    puts params

    quote = Quote.find(params[:quote_id])
    comment = Comment.new(comment_params)
    comment.quote = quote

    if comment.save
      redirect_to quote_path(params[:quote_id]), notice: "Comment created"
    else
      redirect_to quote_path(params[:quote_id]), notice: comment.errors.full_messages
    end
  end

  def destroy
    comment = Comment.find(params[:id])

    if comment.destroy
      redirect_to quote_path(params[:quote_id]), notice: "Comment deleted!"
    else
      redirect_to quote_path(params[:quote_id]), notice: "Could not delete the comment!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end