require 'test_helper'

class FractionVotesControllerTest < ActionController::TestCase
  setup do
    @fraction_vote = fraction_votes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fraction_votes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fraction_vote" do
    assert_difference('FractionVote.count') do
      post :create, fraction_vote: { dont_know: @fraction_vote.dont_know, fraction_id: @fraction_vote.fraction_id, no: @fraction_vote.no, number_of_present: @fraction_vote.number_of_present, vote_id: @fraction_vote.vote_id, yes: @fraction_vote.yes }
    end

    assert_redirected_to fraction_vote_path(assigns(:fraction_vote))
  end

  test "should show fraction_vote" do
    get :show, id: @fraction_vote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fraction_vote
    assert_response :success
  end

  test "should update fraction_vote" do
    patch :update, id: @fraction_vote, fraction_vote: { dont_know: @fraction_vote.dont_know, fraction_id: @fraction_vote.fraction_id, no: @fraction_vote.no, number_of_present: @fraction_vote.number_of_present, vote_id: @fraction_vote.vote_id, yes: @fraction_vote.yes }
    assert_redirected_to fraction_vote_path(assigns(:fraction_vote))
  end

  test "should destroy fraction_vote" do
    assert_difference('FractionVote.count', -1) do
      delete :destroy, id: @fraction_vote
    end

    assert_redirected_to fraction_votes_path
  end
end
