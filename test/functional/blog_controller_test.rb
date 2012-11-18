require 'test_helper'

class BlogControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert(posts = assigns(:posts), "Cannot find @posts")
    assert_select 'div#posts' do
      assert_select 'div.post', :count => posts.size
    end
  end
  
end
