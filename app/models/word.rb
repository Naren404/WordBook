class Word < ApplicationRecord
  belongs_to :word_category
  belongs_to :user
end
