class StoriesController < ApplicationController
  before_action :authenticate, only: :new
  include GetTitle

  def index
    @stories = Story.all
  end

  def new
      @story = Story.new
      @user = current_user
  end

  def create
    user = current_user
    params[:story][:title] = get_title(params[:story][:url])
    user.stories.create(story_params)
    redirect_to root_path
  end

  private

  def authenticate
    unless logged_in?
      redirect_to root_path
    end
  end

  def story_params
    params.require(:story).permit(:url, :title)
  end

end