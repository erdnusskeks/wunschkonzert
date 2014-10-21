class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :wishes
  validates :email, uniqueness: true
end
