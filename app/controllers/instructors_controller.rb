class InstructorsController < ApplicationController
    before_action :set_instructor, only: [:show, :update, :destroy]

    def index
        @instructors = Instructor.all 
        render json: @instructors
    end

    def show
        render json: @instructor
    end

    def create
        @instructor = INstructor.new(instructor_params)
        if @instructor.save
            render json: @instructor, status: :created
        else
            render json: @instructor.errors, status: :unprocessable_entity
        end
    end

    def update
        if @instructor.update(instructor_params)
            render json: @instructor
        else
            render json: @instructor.errors, status: :unprocessable_entity
        end
    end
    
end
