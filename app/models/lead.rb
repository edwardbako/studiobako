class Lead < ApplicationRecord
  enum :state, [:newest, :contacted, :qualified, :disqualified]

  validates_presence_of :name, :email, :phone
end
