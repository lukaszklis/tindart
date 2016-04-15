require 'test_helper'

class ArtPiecesControllerTest < ActionController::TestCase
  setup do
    @art_piece = art_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_piece" do
    assert_difference('ArtPiece.count') do
      post :create, art_piece: { genre: @art_piece.genre, link: @art_piece.link, name: @art_piece.name }
    end

    assert_redirected_to art_piece_path(assigns(:art_piece))
  end

  test "should show art_piece" do
    get :show, id: @art_piece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_piece
    assert_response :success
  end

  test "should update art_piece" do
    patch :update, id: @art_piece, art_piece: { genre: @art_piece.genre, link: @art_piece.link, name: @art_piece.name }
    assert_redirected_to art_piece_path(assigns(:art_piece))
  end

  test "should destroy art_piece" do
    assert_difference('ArtPiece.count', -1) do
      delete :destroy, id: @art_piece
    end

    assert_redirected_to art_pieces_path
  end
end
