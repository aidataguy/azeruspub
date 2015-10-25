class ProjectsController < ApplicationController
	before_action :find_project, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	
	def new
		@project = current_user.projects.build
	end

	def create
		@project = current_user.projects.build(project_params)

		if @project.save
			redirect_to @project
		else 
			render 'new'
		end
	end

	def edit
		@project = Project.friendly.find(params[:id])
	end

	def update
		@project = Project.friendly.find(params[:id])
		if @project.update(project_params)
			redirect_to @project
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to root_path
	end

	def index
		@projects = Project.all.order('created_at DESC')
	end

	def show
		@project = Project.friendly.find(params[:id])
	end

	private

	def find_project
		@project = Project.friendly.find(params[:id])
	end

	def project_params
		params.require(:project).permit(:name, :description, :url, :preview)
	end

end
