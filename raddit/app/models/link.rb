class Link < ApplicationRecord
  belongs_to :user
  before_save :url_check

  def url_check
    u = URI(url)
    u.scheme || self.url = "http://#{url}"
  end
end
