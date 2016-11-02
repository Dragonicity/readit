require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  
  test "creates vote" do
    assert_difference 'stories(:two).votes.count' do
      post story_votes_path(stories(:two))
    end 
  end

end
