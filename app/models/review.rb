class Review < ApplicationRecord
  belongs_to :restaurant
  # some_review.restaurant
end
