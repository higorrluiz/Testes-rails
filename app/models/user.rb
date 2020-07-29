class User < ApplicationRecord
  has_one :info, dependent: :destroy
  accepts_nested_attributes_for :info
  validates :password, confirmation: true

  

  def resumo
    nascimento = 2020 - self.info.age
    "#{self.name} é #{self.info.nationality} e tem #{self.info.age} anos. Nascido no ano de #{nascimento}"

  end

end

