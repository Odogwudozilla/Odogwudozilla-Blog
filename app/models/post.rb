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

class Post < ApplicationRecord
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :technology, :programming

  extend FriendlyId
  friendly_id :title, use: :finders
  WillPaginate.per_page = 9

  # Orders the posts according to the IDs and in descending order
  scope :most_recent, -> { order(published_at: :desc) }
  
  # returns only the published posts
  scope :published, -> { where(published: true)}

  # Generates friendly_id when the title of post changes
  def should_generate_new_friendly_id?
    title_changed?    
  end 

  def display_day_published
    if published_at.present?
      "Published #{published_at.strftime('%-b %-d, %Y')}"
    else
      if published?
        "Published eons ago"
      else
        "Not published yet."
      end 
    end
  end 
end
