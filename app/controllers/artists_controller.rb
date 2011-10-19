# this is not the way to write a "good" controller, but is a stub so we can work on the view code
class ArtistsController < ApplicationController
  def show
 #   @artist = Artist.find(params[:id])
    
    # sorting
 #   sort_by = case params[:sort]
 #   	when "name"  then "name"
 #       when "release_date"   then "release_date"
 #   end
  	@artist = Artist.find(params[:id]) 

    # paginate
    @small_albums = @artist.albums.paginate :page => params[:page], :order => params[:sort], :per_page => 6
  end
  
  def index
    @artists = Artist.all
  end
  
  def new
    @artist = Artist.new
  end
  
  def create
    @artist = Artist.create! params[:artist]
    redirect_to @artist
  end
  
  def edit
    @artist = Artist.find(params[:id])
  end
  
  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes params[:artist]
    redirect_to @artist
  end
  
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

end