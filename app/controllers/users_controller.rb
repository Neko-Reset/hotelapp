class UsersController < ApplicationController
  # before_action :forbid_login_user, {only: [:new, :create, :login, :login_form]}
  def index
    binding.pry
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    # @user = User.new(params.require(:user).permit(:name, :email, :password, :image))
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      image:"default.jpg"
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:name]
  #   @user.email = params[:email]
    
  #   if params[:image]
  #     @user.image_name = "#{@user.id}.jpg"
  #     image = params[:image]
  #     File.binwrite("assets/images/#{@user.image_name}",image.read)
  #   end
    @user = User.find_by(id: params[:id])
    if @user.update(params.require(:user).permit(:name, :email, :password, :image))
      flash[:notice] = "更新しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def destroy
    @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "ユーザーを削除しました"
      redirect_to("/users")
  end

  def login_form
  end

  def login
    @user = User.find_by(
      email: params[:email],
      password: params[:password]
    )
    if @user 
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/users")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      render("users/login_form")
    end
  end

  def logout
  session[:user_id] = nil
  flash[:notice] = "ログアウトしました"
  redirect_to("/login")
  end
end
