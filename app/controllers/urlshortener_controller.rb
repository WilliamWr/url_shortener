class UrlshortenerController < ApplicationController
  def index
    @url = Urlshortener.new
    @urls = Urlshortener.all
  end

  def show
    @shorturl = Urlshortener.find(params[:id])
    redirect_to @shorturl.longurl
  end

  def create
    @url = Urlshortener.new(url_params)
    # @url.longurl = "https://#{@url.longurl}"
    if @url.longurl.include?("https://") || @url.longurl.include?("http://")
      @url.longurl
    else
      @url.longurl = "https://#{@url.longurl}"
    end
  # end

    if @url.save
      redirect_to root_path
    end

  end


  private
    def url_params
      params.require(:urlshortener).permit(:longurl)
    end
end
