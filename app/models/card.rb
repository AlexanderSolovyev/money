class Card < ApplicationRecord
  has_many :trans
  def self.totals
    cards=Card.all
    @totals=0
    cards.each do |card|
      @totals=@totals+card.balance
    end
    return @totals
  end
  def balance_change(quality)
    self.balance=self.balance-quality
    self.save
  end
end
