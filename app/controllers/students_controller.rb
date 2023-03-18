class StudentsController < ApplicationController

  def index
    students = if params[:name]
      Student.by_name(params[:name])
    else
      Student.all
    end
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
  # def name
  #   if (Student.find(params[:name]))
  #     render json: Student.find(params[:name])      
  #   else
  #     render {err: "not_found"}
  #   end
  # end
end
