class Movie < ActiveRecord::Base
	validates_presence_of :title, :year

	belongs_to :list
	belongs_to :user
end
