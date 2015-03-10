class List < ActiveRecord::Base
	belongs_to :user, dependent: :destroy
	has_many :movies
end
