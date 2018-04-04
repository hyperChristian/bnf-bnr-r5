class Admin::DocumentsController < Admin::ApplicationController
  def index
  	@documents = Document.order(:id :asc)

  end

  def new
  end

  def create
  end

  def edit
   
    
  end

  def update
  end

  def show
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to :back, notice: 'Document was successfully deleted'	
  end  
end
