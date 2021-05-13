class PostsController < ApplicationController
  def index
    @posts = [
      "今日からTwitter2で狂うぞ〜！",
      "投稿一覧ページ作成中！"
    ]
  end
end
