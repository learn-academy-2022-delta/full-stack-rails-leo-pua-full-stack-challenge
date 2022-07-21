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
    
    def edit
        @blog = Blog.find(params[:id])
        # if @blog.edit
        #     redirect_to edit_path(@blog)
        # end
    end
    def update
        @blog = Blog.find(params[:id])
        @blog.update(entry_params)
        if @blog.valid?
            redirect_to blog_path(@blog)
        end
    end
    def destroy
        @blog = Blog.find(params[:id])
        if @blog.destroy 
            redirect_to blogs_path
        end
    end
    private
    def entry_params
        params.require(:blog).permit(:title, :content) 

    end
end
