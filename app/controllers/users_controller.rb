class UsersController < ApplicationController
	before_action :authenticate_user!
  before_action :authorize
  load_and_authorize_resource
	def index
    @users = User.search(params[:term])
    respond_to do |format|
      format.html
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  private
    def authorize
      if !current_user.has_role? :admin
        render plain:"No access for you!"
      end
    end

    def user_params
      params.require(:user).permit(:nim, :nama, :jenis_kelamin, :alamat, :tempat_lahir, :tgl_lahir, :jurusan, :fakultas, :email, :no_telepon,:kepribadian, :keterangan, :profile_picture, :remove_profile_picture, :term)
    end
end
