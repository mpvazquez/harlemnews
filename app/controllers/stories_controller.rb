class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
  end

  private


end