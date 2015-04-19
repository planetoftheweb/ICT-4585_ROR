require 'test_helper'

class BooksLibrariesControllerTest < ActionController::TestCase
  setup do
    @books_library = books_libraries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books_libraries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create books_library" do
    assert_difference('BooksLibrary.count') do
      post :create, books_library: { book_id: @books_library.book_id, library_id: @books_library.library_id }
    end

    assert_redirected_to books_library_path(assigns(:books_library))
  end

  test "should show books_library" do
    get :show, id: @books_library
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @books_library
    assert_response :success
  end

  test "should update books_library" do
    patch :update, id: @books_library, books_library: { book_id: @books_library.book_id, library_id: @books_library.library_id }
    assert_redirected_to books_library_path(assigns(:books_library))
  end

  test "should destroy books_library" do
    assert_difference('BooksLibrary.count', -1) do
      delete :destroy, id: @books_library
    end

    assert_redirected_to books_libraries_path
  end
end
