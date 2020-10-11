class Actualite < ApplicationRecord

  has_one_attached :avatar

  validates :title, presence: true
  validates :short_desc, presence: true


end
