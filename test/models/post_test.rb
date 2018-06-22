# == Schema Information
#
# Table name: posts
#
#  id               :integer          not null, primary key
#  title            :string
#  preview          :string
#  body             :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  slug             :string
#  banner_image_url :string
#  published        :boolean          default(FALSE)
#  published_at     :datetime
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Example Title", preview: "Example Preview", body: "A large body of text")
  end

  test "should be valid" do
    assert @post.valid?
  end
end
