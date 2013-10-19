class LinksController < ApplicationController

	def index
		@links = Link.all
    # @links = Link.order("name").page(params[:page]).per(3)
	end

  def show
  	@links = Link.find(params[:id])
  end

  def new
  	@links = Link.new
  end

  def create
  	@links = Link.new(link_params)
  	@links.save

  	flash.notice = "Link '#{@links.title} Created!"

  	redirect_to link_path(@links)
  end

  def link_params
  	params.require(:link).permit(:title, :url, :description)
  end
end
