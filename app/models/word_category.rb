class WordCategory < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: :slugged

    has_many :words, dependent: :destroy
end
