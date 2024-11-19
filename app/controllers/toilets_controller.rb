class ToiletsController < ApplicationController
  skip_before_action :authenticate_user!, except: :index
  def index
    @toilets = Toilet.all
  end
end
