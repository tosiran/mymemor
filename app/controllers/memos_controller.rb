class MemosController < ApplicationController

  before_action :move_to_index, except: [:index, :show, :search]

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
    if @memo.save
      redirect_to memo_path(memo.id), notice: '編集しました！'
    else
      flash.now[:notice] = '編集に失敗しました.....'
      render :new
    end
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to root_path
  end

  def create
    @memo = Memo.create(title: memo_params[:title],  text: memo_params[:text], user_id: current_user.id)
    if @memo.save
      redirect_to root_path, notice: '投稿に成功しました！'
    else
      flash.now[:notice] = '投稿に失敗しました.....'
      render :new
    end
  end

  def show
    @memo = Memo.find(params[:id])
  end
  
  def search
    @memos = Memo.search(params[:keyword])
  end


  private
  def memo_params
    params.require(:memo).permit(:title, :text, :url).merge(user_id: current_user.id)
    
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
