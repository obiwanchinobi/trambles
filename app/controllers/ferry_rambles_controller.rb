class FerryRamblesController < ApplicationController
  def index
    @ferries  = Comment.category_equals(Comment::FERRY).all(:limit => 10)
  end
end
