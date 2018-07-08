class PagesController < ApplicationController
  layout false
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by_id(params[:id])
  end

  def new
  end

  def create
    byebug

    @page = Page.new(page_params)

    if @page.save!
      flash[:notice] = 'Created page successfully'
      redirect_to :action => 'index'
    else
      flash[:error] = 'Created page failed'
      render :new
    end
  end

  def edit
  end

  def delete
  end

  private

  def page_params
    params.require(:page).permit(:subject_id, :name, :permalink, :position, :visible)
  end
end
