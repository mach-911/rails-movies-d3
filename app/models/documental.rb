class Documental < ApplicationRecord
	validates :name, presence: true
	validates :sypnosis, presence: true
	validates :director, presence: true
end
