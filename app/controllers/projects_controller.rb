class ProjectsController < ApplicationController

  def index
    @divisions = Division.all
    @projects = Project.all
    render :index
  end

  def new
    # @employee= Employee.find(params[:employee_id])
    @project = Project.new
    render :new
  end

  def create
    # @employee = Employee.find(params[:employee_id])
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    # @employee = Employee.find(params[:employee_id])
    @project = Project.find(params[:id])
    render :edit
  end

  def show
    # @employee = Employee.find(params[:employee_id])
    @project = Project.find(params[:id])
    render :show
  end

  def add
    @project = Project.create(name: "A Love Supreme")
    @employee = Employee.create(name: "John Coltrane")
    project.employees << employee
  end

  def update
    @project= Project.find(params[:id])
    if @project.update(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to divisions_path
  end

  private
  def project_params
    params.require(:project).permit(:name)
  end

end
