class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:edit, :update, :destroy ,:create,:new]

  respond_to :html

  def index
    @blogs = Blog.all.order("created_at DESC")
                   .paginate(:page => params[:page], :per_page => 9)
    respond_with(@blogs)
  end

  def show
    respond_with(@blog)
  end

  def new
    @blog = current_user.blogs.build
    respond_with(@blog)
  end

  def edit
  end

  def create
    @blog = current_user.blogs.build(blog_params)
    @blog.user_id = current_user.id
    @blog.save
    respond_with(@blog)
  end

  def update
    @blog.update(blog_params)
    respond_with(@blog)
  end

  def destroy
    @blog.destroy
    respond_with(@blog)
  end

  private
    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :desc, :url, :tags, :sub_type,:category)
    end
end
