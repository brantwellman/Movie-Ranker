class Movie < ActiveRecord::Base
	validates_presence_of :title, :year

	belongs_to :user
	belongs_to :list
end
