class StudentClassController < ApplicationController
  def index
    @student_classes = Student_Class.new
  end

  def show
  end

  def new
    @student_class = Student_Class.new
  end

  def create
    @student_class = Student_Class.new(student_class_params)
    @student_class.save
    flash[:notice] = "#{@student_class.title} was successfully created"
    redirect_to student_class_path
  end

private
# Use callbacks to share common setup or constraints between actions.
def set_student_class
  @student_class = Student_Class.find(params[:id])
end

# Only allow a list of trusted parameters through.
def student_class_params
  params.require(:student_class).permit(:title)
end

end