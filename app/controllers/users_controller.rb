class UsersController < ApplicationController
  
  def edit

  end

  def update
    if current_user.update(user_params)
     redirect_to root_path
    # ↑pictweetでは投稿完了画面（update.html）に行っていたが、今回はindex.htmlに飛ぶためこの形
    else
      render :edit
    end
  end

  

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  
end
