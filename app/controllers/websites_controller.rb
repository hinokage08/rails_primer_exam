class WebsitesController < ApplicationController
before_action :set_blog, only: [:show, :edit, :update]
  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def edit
  end

  def create
    @website = Website.create(website_params)
    if @website.save
      redirect_to websites_path,notice: "ツイートされました"
    else
      render :new
    end
  end

  def show
  end

  def update
    if @website.update(website_params)
      redirect_to website_path, notice:"編集しました"
    else
      render :edit
    end
  end

  private
  def website_params
    params.require(:website).permit(:content)
  def set_website
    @website = Website.find(params[:id])
  end
end
