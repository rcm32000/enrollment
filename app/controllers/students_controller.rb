class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      flash[:success] = "#{@student.name} enrolled!"
      redirect_to student_path(@student)
    else
      flash[:fail] = 'Enrollment unsuccessful'
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    if @student.save
      flash[:success] = "#{@student.name} updated!"
      redirect_to student_path(@student)
    else
      flash[:fail] = 'Update failed'
      render :edit
    end
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end
end
