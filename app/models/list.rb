class List < ActiveRecord::Base
	validates_presence_of :year

	belongs_to :user
	has_many :movies, dependent: :destroy
end
