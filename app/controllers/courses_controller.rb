class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
      if @course.save
        error_notification = 'Aluno criado com sucesso!'
        redirect_to courses_path
      else
        flash[:error] = 'Nome do Aluno obrigatório'
        redirect_to new_course_path
      end
  end

  def edit

  end

  def update
    @course = Course.find(params[:id])
    @course.update_attributes(course_params)
      if @course.save
        redirect_to courses_path
      else
        flash[:error] = 'Nome do Aluno obrigatório'
        redirect_to edit_course_path(@course)
      end
  end

  def desativation_courses
    @course = Course.find(params[:course_id])
    @course.update_attribute(:status, 1)
    redirect_to courses_path
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :status)
    end
end
