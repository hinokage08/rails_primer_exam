class WebsitesController < ApplicationController
before_action :set_website, only: [:show, :edit, :update, :destroy]
  def index
    @websites = Website.all
  end

  def new
    @website = Website.new
  end

  def edit
  end

  def create
    @website = Website.new(website_params)
    if params[:back]
      render :new
    else
      if @website.save
        redirect_to websites_path,notice: "ツイートされました"
      else
        render :new
      end
    end
  end

  def show
  end

  def update
    if @website.update(website_params)
      redirect_to websites_path, notice:"編集しました"
    else
      render :edit
    end
  end

  def destroy
    @website.destroy
    redirect_to websites_path, notice: "ツイートを削除しました"
  end

  def confirm
    @website = Website.new(website_params)
    render :new if @website.invalid?
  end

  private

  def website_params
    params.require(:website).permit(:content)
  end

  def set_website
    @website = Website.find(params[:id])
  end
end
