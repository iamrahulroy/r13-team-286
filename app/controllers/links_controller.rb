class LinksController < ApplicationController

	def index
		@link = Link.all
	end

  def show
  	@link = Link.find(params[:id])
  end

  def new
  	@link = Link.new
  end

  def create
  	@link = Link.new(link_params)
  	@link.save

  	flash.notice = "Link '#{@link.title} Created!"

  	redirect_to link_path(@link)
  end

  def link_params
  	params.require(:link).permit(:title, :url, :description)
  end
end
