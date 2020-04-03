class MemosController < ApplicationController
  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
    
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def create
    Memo.create(memo_params)
  end

  def show
    @memo = Memo.find(params[:id])
  end
  
  private
  def memo_params
    params.require(:memo).permit(:title, :text)
    
  end
end
