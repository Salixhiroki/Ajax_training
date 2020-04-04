class PagesController < ApplicationController
  # CSRF対策
  # ログにCan't verify CSRF token authenticityと出てきたら以下を書く
  protect_from_forgery except: :create

  def index
    # データを格納するための新しいインスタンスを作成しておく
    @todo = Todo.new
    # 今まで作ったデータを昇順に並び替えて@todosに入れておく
    @todos = Todo.order("created_at ASC")
  end

  def create
    # データを格納するための新しいインスタンスを作成しておく
    @todo = Todo.new(todo_params)
    # binding pry
    # 保存する
    if @todo.save
      # この形式で返すよ
      respond_to do |format|
        # HTML形式かJson形式
        format.html { redirect_to :root}
        format.json { render json: @todo}
      end
      
    else
      # もし保存できなければそのままindexに戻る
      render :index, alert: "Todoを入力してください"
    end
  end
  
  # ストロングパラメータ
  private 
  def todo_params
    params.require(:todo).permit(:content)
  end
    
end