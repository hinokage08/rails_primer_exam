class WebsitesController < ApplicationController

  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def edit
    @website = Website.find(params[:id])
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
    @website = Website.find(params[:id])
  end

  private
  def website_params
    params.require(:website).permit(:content)
  end
end
