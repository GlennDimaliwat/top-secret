class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    
  end
end
