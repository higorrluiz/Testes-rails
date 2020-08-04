class User < ApplicationRecord
  has_one :info, dependent: :destroy
  accepts_nested_attributes_for :info
  validates :name,:email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }
  validates_confirmation_of :email


  def resumo
    nascimento = 2020 - self.info.age
    "#{self.name} é #{self.info.nationality} e tem #{self.info.age} anos. Nascido no ano de #{nascimento}"
  end

end

