class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def grades
        render json: Student.all.order("grade DESC")
    end

    def highest_grade
        students = Student.all.order("grade DESC")
        render json: students[0]
    end
end
