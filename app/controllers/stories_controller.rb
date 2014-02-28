class StoriesController < ApplicationController
  before_action :authenticate, only: :new
  def index
    @stories = Story.all
  end

  def new
      @story = Story.new
      @user = current_user
  end

  private

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

end