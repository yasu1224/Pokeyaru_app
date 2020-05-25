require 'test_helper'

class PokecasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokeca = pokecas(:one)
  end

  test "should get index" do
    get pokecas_url
    assert_response :success
  end

  test "should get new" do
    get new_pokeca_url
    assert_response :success
  end

  test "should create pokeca" do
    assert_difference('Pokeca.count') do
      post pokecas_url, params: { pokeca: { box_id: @pokeca.box_id, detail: @pokeca.detail, genre_id: @pokeca.genre_id, image: @pokeca.image, name: @pokeca.name, rare_id: @pokeca.rare_id } }
    end

    assert_redirected_to pokeca_url(Pokeca.last)
  end

  test "should show pokeca" do
    get pokeca_url(@pokeca)
    assert_response :success
  end

  test "should get edit" do
    get edit_pokeca_url(@pokeca)
    assert_response :success
  end

  test "should update pokeca" do
    patch pokeca_url(@pokeca), params: { pokeca: { box_id: @pokeca.box_id, detail: @pokeca.detail, genre_id: @pokeca.genre_id, image: @pokeca.image, name: @pokeca.name, rare_id: @pokeca.rare_id } }
    assert_redirected_to pokeca_url(@pokeca)
  end

  test "should destroy pokeca" do
    assert_difference('Pokeca.count', -1) do
      delete pokeca_url(@pokeca)
    end

    assert_redirected_to pokecas_url
  end
end
