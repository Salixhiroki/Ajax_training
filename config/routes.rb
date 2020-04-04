Rails.application.routes.draw do
  # トップはindex.html.erb
  root 'pages#index'
  
  # 送信ボタンを押した後はURL=>todo.jsonが含まれる状態でcreateアクションが呼ばれるformat.jsonが使用される
  post 'todos.json', to: 'pages#create'
end
