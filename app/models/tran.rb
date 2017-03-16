class Tran < ApplicationRecord
  belongs_to :type
  belongs_to :card
  accepts_nested_attributes_for :type
  accepts_nested_attributes_for :card
end
