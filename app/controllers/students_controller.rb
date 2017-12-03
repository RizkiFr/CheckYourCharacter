class StudentsController < ApplicationController
  before_action :authenticate_user!
	def index
    @students = Student.search(params[:term])
    respond_to do |format|
      format.html
      format.xls # { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:nim, :nama, :jenis_kelamin, :alamat, :tempat_lahir, :tgl_lahir, :jurusan, :fakultas, :email, :no_telepon,:kepribadian, :keterangan, :profile_picture, :remove_profile_picture, :term)
    end
end
