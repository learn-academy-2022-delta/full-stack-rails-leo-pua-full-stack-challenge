class BlogController < ApplicationController
    def index
        @blogs = Blog.all 
    end
    def show
        @blog = Blog.find(params[:id])
    end
    def new
        @blog = Blog.new
    end
    def create
        @blog = Blog.create(entry_params)
        puts '#{entry_params}'
        if @blog.valid?
            redirect_to blogs_path
        else
            redirect_to entry_path
        end
    end

    private
    def entry_params
        params.require(:blog).permit(:title, :content) 

    end
end
