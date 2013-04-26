class ProjectsController < ApplicationController
	
	respond_to :js
	
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end
  
  def planboard
  	@projects = Project.all
  	@project = Project.new
  	@task = Task.new
  	
  end
  
  def workboard
  	@projects = Project.all
  	@project = Project.new
  	@task = @project.tasks.build
  	
  end
  

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    @task = Task.new
		respond_with(@project, @task)

    #respond_to do |format|
      #format.html # show.html.erb
      #format.json { render json: @project }
    #end
  end
  
  def hide
  	#Execute hide.js.erb
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(params[:project])
		
    
    
    #respond_to do |format|
      if @project.save
      	respond_with(@project)
        #format.html { redirect_to @project, notice: 'Project was successfully created.' }
        #format.json { render json: @projects, status: :created, location: @project }
        #format.js
         
      else
        #format.html { render action: "new" }
        #format.json { render json: @project.errors, status: :unprocessable_entity }
        #format.js
      end
    #end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
