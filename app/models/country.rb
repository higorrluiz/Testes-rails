class Country < ApplicationRecord
  validates :name, presence: true , length: {maximum: 1}

  def full_name
    "republica federativa da #{name}"
  end
end
