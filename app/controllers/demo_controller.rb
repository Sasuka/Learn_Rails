class DemoController < ApplicationController
  layout false
  def index
    @arr = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def hello

  end
  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def text_helpes
  end

  def escape_output
  end

end
