def create
  @employee = Employee.find(params[:employee_id])
  @project = @employee.projects.new(project_params)
  if @project.save
    redirect_to employee_path(@employee)
  else
    render :new
  end
end
