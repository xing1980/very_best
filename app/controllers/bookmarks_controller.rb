class BookmarksController < ApplicationController
  def index
    @bookmarks = Bookmark.page(params[:page]).per(10)
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end
end
