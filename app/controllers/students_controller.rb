class StudentsController < ApplicationController
    
    def index
        @std = Student.all
    end
    
    def show
        @std = Student.find(params[:id])
    end
    
    def edit
        
    end
    
    def new
        @std = Student.new
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
        if @std.update(student_params)
            redirect_to @std, notice: 'Student record was successfully updated'
        else
            render :edit
        end
    end
    def destroy
        @std = Student.find(params[:id])
        @std.destroy
        redirect_to student_url, notice:'Record deleted'
    end
    private
    def student_params
        params.require(:student).permit(:name, :weight, :height, :color, :gpa, :email)
    end
end
