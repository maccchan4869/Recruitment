class RegisterController < ApplicationController
  skip_before_action :login_required

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_user_url(@user), notice: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end
  
  private

  def user_params
    params.require(:register).permit(:login_id, :name, :email, :password, :password_confirmation)
  end
end
