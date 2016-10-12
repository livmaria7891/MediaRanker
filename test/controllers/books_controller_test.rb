require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: books(:two).id}
    assert_response :success
    assert_template :show
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template :new
  end

  test "Creating a Book changes number of Books" do
    assert_difference('Book.count', 1) do
      post_params = {book: {title: "A nice book"}}
      post :create, post_params
    end
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, {id: 1}
    assert_response :success
    assert_template :edit
  end

  test "should update existing book" do
    patch :update, id: books(:one).id, book: { title: "title", author: "authors"}
    assert_response :redirect
  end

  test "should delete book" do
    delete :destroy, id: books(:one).id
    assert_response :redirect
  end

  test "delete changes number of books" do
    assert_difference("Book.count", -1) do
      delete :destroy, {id: books(:one).id}
    end
  end

end
