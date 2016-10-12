require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: movies(:two).id}
    assert_response :success
    assert_template :show
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "Creating a Movie changes number or Movies" do
    assert_difference('Movie.count', 1) do
      post_params = {movie: {title: "A nice movie"}}
      post :create, post_params
    end
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, {id: 1}
    assert_response :success
    assert_template :edit
  end

  test "should update existing movie" do
    patch :update, id: movies(:one).id, movie: { title: "title", director: "director"}
    assert_response :redirect
  end

  test "should delete movie" do
    delete :destroy, id: movies(:one).id
    assert_response :redirect
  end

  test "delete changes number of movies" do
    assert_difference("Movie.count", -1) do
      delete :destroy, {id: movies(:one).id}
    end
  end

end
