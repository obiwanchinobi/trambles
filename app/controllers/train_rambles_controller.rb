class TrainRamblesController < ApplicationController
  def index
    @trains  = Comment.category_equals(Comment::TRAIN).descend_by_created_at.all(:limit => 10)
  end
end
