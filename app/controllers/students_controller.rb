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
        flash[:notice] = 'Estudante criado com sucesso!'
        redirect_to students_path
      else
        flash[:error] = 'Registro deve ser unico para cada estudante'
        redirect_to new_student_path
      end
  end

  def edit
    @student = Student.find(params[:id])

  end

  def update
    @student = Student.find(params[:id])
    @student.update_attributes(student_params)
      if @student.save
        flash[:notice] = 'Estudante editado com sucesso!'
        redirect_to students_path
      else
        flash[:error] = 'Registro deve ser unico para cada estudante'
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
      params.require(:student).permit(:name, :register_number, :status, course_ids: [])
    end
end
