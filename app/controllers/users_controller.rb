class UsersController < ApplicationController
	before_action :authenticate_user!
  before_action :authorize, except: [:show] 
  load_and_authorize_resource :except => [:show]
	def index
    @users = User.search(params[:term]).with_role :student
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
      redirect_to users_path, notice: 'Data berhasil di ubah'
    else
      render 'edit'
    end
  end

  def destroy
    @countAnswer=Answer.where(user_id: @user.id).count
    @answers = Answer.find_by_user_id(@user.id)
    if @countAnswer>1
      @answers.each do |answer|
        answer.destroy
      end
    elsif @countAnswer<1
      @user.destroy
    else
      @answers.destroy
      @user.destroy
    end

    redirect_to users_path
  end

  private
    def authorize
      if !current_user.has_role? :admin
        redirect_to welcome_path, alert: "Anda tidak bisa mengakses halaman tersebut"
      end
    end

    def user_params
      params.require(:user).permit(:nim, :nama, :jenis_kelamin, :alamat, :tempat_lahir, :tgl_lahir, :email, :no_telepon,:kepribadian, :keterangan, :profile_picture, :remove_profile_picture, :term)
    end
end
