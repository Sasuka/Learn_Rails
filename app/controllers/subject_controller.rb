class SubjectController < ApplicationController
  layout false
  def index
    @subjects = Subject.sorted
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new({:name => 'Default'})
    @subject_count = Subject.count + 1
  end

  def create
    # Instane a new object using form paramaters
    @subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
    # If save succeds, redirect to the index action
      flash[:notice] = "Subject created sucessfully"
      redirect_to :action => 'index'
    else
    # If save failds, redisplay the form so user can fix problem
      @subject_count = Subject.count + 1
      render :new
    end

  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    # Find the existing a new object using form paramaters
    @subject = Subject.find(params[:id])
    byebug

    # Update the object
    if @subject.update_attributes(subject_params)
      # If update succeds, redirect to the index action
      flash[:notice] = "Subject updated sucessfully"
      redirect_to :action => 'show', :id => @subject.id
    else
      # If update failds, redisplay the form so user can fix problem
      render :edit
    end
  end
  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id]).destroy
    flash[:notice] = "Subject #{@subject.name}destroyed sucessfully"
    redirect_to :action => 'index'
  end
  private
    def subject_params
       params.require(:subject).permit(:name, :position, :visible)
    end
end
