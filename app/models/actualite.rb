class Actualite < ApplicationRecord

  validates :title, presence: true
  validates :short_desc, presence: true


end
