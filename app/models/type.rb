class Type < ApplicationRecord
  has_many :trans
  has_many :plans
end
