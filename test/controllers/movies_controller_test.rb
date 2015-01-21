require 'test_helper'

class MoviesControllerTest < ActionController::TestCase

	test "index" do
		FactoryGirl.create(:movie)
		get :index
		assert_response :success
	end

end
