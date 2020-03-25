class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
  end

  def create
    new_artist = Artist.new(artist_params)

    if new_artist.save
      redirect_to "/artists/#{new_artist.id}"
      flash[:success] = "Success!"
    else
      flash[:notice] = "Artist not created: Required information missing."
      render :new
    end
  end

  def destroy
    Artist.destroy(params[:id])
    redirect_to "/artists"
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    Artist.update(params[:id], artist_params)
    # artist = Artist.find(params[:id])
    # artist.update(artist_params)
    redirect_to "/artists/#{params[:id]}"
  end

  private

  def artist_params
    params.permit(:name)
  end



end
