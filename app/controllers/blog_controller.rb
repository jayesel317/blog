class BlogController < ApplicationController
    def index
      @posts = Post.find_all_by_published(true)
    end
end
