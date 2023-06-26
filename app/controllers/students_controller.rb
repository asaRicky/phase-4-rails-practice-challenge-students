class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :update, :destroy]

    def index
        @students = Student.all
        render json: @students
    end

    def show
        render json: @student
    end
end
