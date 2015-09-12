class Cow < ActiveRecord::Base
  has_many :attacks, dependent: :destroy
  has_many :people, through: :attacks
end
