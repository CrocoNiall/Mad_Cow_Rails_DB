class Person < ActiveRecord::Base
  has_many :attacks, dependent: :destroy
  has_many :hotels, through: :attacks
end
