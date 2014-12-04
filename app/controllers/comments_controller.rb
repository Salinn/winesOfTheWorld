class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json

  def index
    @comments = Comment.all
    respond_with(@comments)
  end

  def show
    respond_with(@comment)
  end

  def new
    @comment = Comment.new
    respond_with(@comment)
  end

  def edit
  end

  def create
    @comment = Comment.new(comment_params)
    flash[:notice] = 'Comment was successfully created.' if @comment.save
    redirect_to request.referrer
  end

  def update
    flash[:notice] = 'Comment was successfully updated.' if @comment.update(comment_params)
    redirect_to request.referrer
  end

  def destroy
    @comment.destroy
    respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:wine_id, :user_id, :see, :smell, :swirl, :sip, :swallow, :savor)
    end
end
