class FerryRamblesController < ApplicationController
  def index
    @ferries  = Comment.category_equals(Comment::FERRY).descend_by_created_at.all(:limit => 10)
  end
end
