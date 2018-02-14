class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @prototypes = @user.prototypes
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to :root, notice: 'Your user infomation was successfully updated'
  end

  def destroy

     if @user.uer_id == current_user.id
       @user.destroy
     end
   end
  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :position,
      :profile,
      :occupation,
      :avatar
    )
  end
end
