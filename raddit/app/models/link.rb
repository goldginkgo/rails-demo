class Link < ApplicationRecord
  belongs_to :user
  before_save :url_check
  acts_as_votable

  def url_check
    u = URI(url)
    u.scheme || self.url = "http://#{url}"
  end
end
