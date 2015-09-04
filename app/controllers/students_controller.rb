class StudentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
      if @student.save
        error_notification = 'Aluno criado com sucesso!'
        redirect_to students_path
      else
        flash[:error] = 'Nome do Aluno obrigatório'
        redirect_to new_student_path
      end
  end

  def edit

  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
      if @student.save
        redirect_to students_path
      else
        flash[:error] = 'Nome do Aluno obrigatório'
        redirect_to edit_student_path(@student)
      end
  end

  def desativation_student
    @student = Student.find(params[:student_id])
    @student.update_attribute(:status, 1)
    redirect_to students_path
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :register_number, :status)
    end
end
