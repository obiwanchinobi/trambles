class BusRamblesController < ApplicationController
  def index
    @buses  = Comment.category_equals(Comment::BUS).descend_by_created_at.all(:limit => 10)
  end
end
