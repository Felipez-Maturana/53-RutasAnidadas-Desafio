class CommentsController < ApplicationController
	before_action :set_post_id, only: [:index,:create,:edit,:update]

def index

	@comments = @post.comments
end


 def create
 	@post.comments.build(comment_params)
 	@post.save
 	redirect_to post_comments_path(@post)
 end

 def edit
 	@comment = Comment.find(params[:id])
 end

 def update
 	@comment = Comment.find(params[:id])
 	@comment.update(comment_params)
 	redirect_to post_comments_path
 end

 def destroy
 	@comment = Comment.find(params[:id])
 	@comment.destroy
 	redirect_to post_comments_path(@post)
 end
 
 private
 def comment_params
 	params.require(:comment).permit(:content)
 end

 def set_post_id
	@post = Post.find(params[:post_id])
 end


end
