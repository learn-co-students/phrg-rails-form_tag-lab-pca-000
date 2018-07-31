class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def create
    Student.create(first_name: params[:first][:name], last_name: params[:last][:name])
    redirect_to students_path
  end

  def show
    @student = Student.find(params[:id])
  end
end
