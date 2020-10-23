class Ticket < ApplicationRecord
  attr_accessor :token
  validates :token, presence: true

  has_one :user
end
