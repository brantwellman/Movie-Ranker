class Movie < ActiveRecord::Base
	validates_presence_of :title, :year

	belongs_to :list, dependent: :destroy
	belongs_to :user, dependent: :destroy
end
