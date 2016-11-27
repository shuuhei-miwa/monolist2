class Item < ActiveRecord::Base
  # Ownership
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  # Want
  has_many :wants, class_name: "Want" , foreign_key: "item_id", dependent: :destroy
  has_many :want_users , through: :wants, source: :user
  
  # Have
  has_many :haves, class_name: "Have" , foreign_key: "item_id", dependent: :destroy
  has_many :have_users , through: :haves, source: :user
  
end
