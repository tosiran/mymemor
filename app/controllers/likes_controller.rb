class LikesController < ApplicationController
  before_action :set_variables

  def like
    like = current_user.likes.new(memo_id: @memo.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(memo_id: @memo.id)
    like.destroy
  end

  private

  def set_variables
    @memo = Memo.find(params[:memo_id])
    @id_name = "#like-link-#{@memo.id}"
  end
end
