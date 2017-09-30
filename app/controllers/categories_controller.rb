class CategoriesController < ApplicationController

  def index
    @title = load_category.name
    @urls = load_category.urls.recents
  end

  private

  def load_category
    @category ||= Category.find_by(slug: params[:slug])
  end

  def define_meta_tags!  
    @meta = { title: load_category.name, description: load_category.description }
  end

end
