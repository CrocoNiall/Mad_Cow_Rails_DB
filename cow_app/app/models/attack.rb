class Attack < ActiveRecord::Base
  belongs_to :cow
  belongs_to :person
end
