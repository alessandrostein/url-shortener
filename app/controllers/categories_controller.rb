class CategoriesController < ApplicationController

  def index
    @title = load_category.name
    @urls = load_category.urls.recents
  end

  private

  def load_category
    @category ||= Category.find_by(slug: params[:slug])
  end

end
