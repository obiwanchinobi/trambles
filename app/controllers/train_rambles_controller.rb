class TrainRamblesController < ApplicationController
  def index
    @trains  = Comment.category_equals(Comment::TRAIN).all(:limit => 10)
  end
end
