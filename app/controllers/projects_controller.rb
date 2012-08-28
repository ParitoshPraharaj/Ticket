class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all 
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    flash[:notice] = "Project has been created." if @project.save
    redirect_to @project    
  end
  
  def show
    @project = Project.find(params[:id])
  end
end
