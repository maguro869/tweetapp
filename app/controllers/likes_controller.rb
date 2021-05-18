class LikesController < ApplicationController
    before_action :authenticate_user

    def create
        @like = Like.new(post_id: params[:post_id], user_id: @current_user.id)
        if @like.save
            flash[:notice] = "いいね！しました"
            redirect_to("/posts/#{params[:post_id]}")
        else
            flash[:notice] = "ERROR:いいね！できませんでした。よくないね。"
            redirect_to("/posts/#{params[:post_id]}")
        end
    end 

    def destroy
        @like = Like.find_by(user_id: @current_user.id, post_id: params[:post_id])
        if @like.destroy
            flash[:notice] = "いいね！やめました。"
            redirect_to("/posts/#{params[:post_id]}")
        else
            flash[:notice] = "ERROR:いいね！やめられませんでした。よかったね。"
            redirect_to("/posts/#{params[:post_id]}")
        end
        
    end
end