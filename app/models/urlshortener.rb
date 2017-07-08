class Urlshortener < ApplicationRecord

  def to_params
    shorturl
  end
end
