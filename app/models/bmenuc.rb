class Bmenuc < ApplicationRecord
	
    validates :user_id, presence: true
    validates :bshop_id, presence: true
	validates :name, presence: true

	belongs_to :user
	belongs_to :bshop
	
end