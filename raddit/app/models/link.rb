class Link < ApplicationRecord
  belongs_to :user
  before_save :url_check
  acts_as_votable
  has_many :comments

  def url_check
    u = URI(url)
    u.scheme || self.url = "http://#{url}"
  end
end
