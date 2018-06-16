require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Example Title", preview: "Example Preview", body: "A large body of text")
  end

  test "should be valid" do
    assert @post.valid?
  end
end
