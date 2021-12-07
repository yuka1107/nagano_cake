class Admin::GenresController < ApplicationController

def create
  @genre = Genre.new
  if @genre.save
     flash[:notice] = "ジャンルを追加しました"
     redirect_to admin_genres_path
  else
    @genres = Genre.all
    render :index
  end
end

def index
  @genre = Genre.new
  @genres = Genre.all
end

def edit
  @genre = Genre.find(params[:id])
end

def update
  @genre = Genre.find(params[:id])
  if @genre.update(genre_params)
    flash[:notice] = "ジャンルを変更しました"
    redirect_to admin_genres_path
  else
    render :edit
  end
end

def genre_params
  params.require(:genre).permit(:name, :is_activ)
end

end