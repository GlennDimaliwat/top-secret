class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update]
  
  def index
    if signed_in?
      company = current_user.company
      @documents = Document.where(company: company)
    end
  end

  def show
  end

  def edit
  end

  def update
    if @document.update(document_params)
      # Success, get to #show page
      redirect_to @document
    else
      # Error, render edit form again
      render :edit
    end
  end

  private
    # What attributes we allow from forms
    def document_params
      params.require(:document).permit(:name, :content)
    end

    # Get document id and check document policy
    def set_document
      @document = Document.find(params[:id])
      authorize @document
    end
end
