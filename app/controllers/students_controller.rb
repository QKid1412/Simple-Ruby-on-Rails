class StudentsController < ApplicationController
    
    def index
        @std = Student.all
    end
    
    def show
        @std = Student.find(params[:id])
    end
    
   
    def new
        @std = Student.new
    end
     
    def edit
         @std = Student.find(params[:id])
    end
    
    def display
         @std = Student.all
    end
    
    def create
        @std = Student.new(student_params)   
        if @std.save
            redirect_to @std, notice: 'Student record was successfully created'
        else
            render :action => "new"
        end
    end
    
    def update
         @std = Student.find(params[:id])
        if @std.update(student_params)
            redirect_to @std, notice: 'Student record was successfully updated'
        else
            render :edit
        end
    end
    def destroy
        Student.find(params[:id]).destroy
        redirect_to :action => 'index'
    end
    private
    def student_params
        params.require(:student).permit(:name, :weight, :height, :color, :gpa, :email)
    end
end
