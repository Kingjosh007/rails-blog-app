class PostsController < ApplicationController
    def index; end
  
    def show; 
      @id = params[:id]
    end
  end