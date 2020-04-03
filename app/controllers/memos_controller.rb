class MemosController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
    
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to memo_path(memo.id)
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to root_path
  end

  def create
    Memo.create(memo_params)
  end

  def show
    @memo = Memo.find(params[:id])
  end
  
  private
  def memo_params
    params.require(:memo).permit(:title, :text, :url)
    
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
