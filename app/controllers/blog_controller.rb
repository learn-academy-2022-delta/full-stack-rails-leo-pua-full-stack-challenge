class BlogController < ApplicationController
    def index
        @blogs = Blog.all 
    end
    def show
        @blog = Blog.find(params[:id])
    end
    def new
    end
    def create
        @blog = Blog.create(title: params[:title], content: params[:content]
        )
    end
end
