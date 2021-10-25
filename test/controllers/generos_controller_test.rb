require "test_helper"

class GenerosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genero = generos(:one)
  end

  test "should get index" do
    get generos_url
    assert_response :success
  end

  test "should get new" do
    get new_genero_url
    assert_response :success
  end

  test "should create genero" do
    assert_difference('Genero.count') do
      post generos_url, params: { genero: { nome: @genero.nome } }
    end

    assert_redirected_to genero_url(Genero.last)
  end

  test "should show genero" do
    get genero_url(@genero)
    assert_response :success
  end

  test "should get edit" do
    get edit_genero_url(@genero)
    assert_response :success
  end

  test "should update genero" do
    patch genero_url(@genero), params: { genero: { nome: @genero.nome } }
    assert_redirected_to genero_url(@genero)
  end

  test "should destroy genero" do
    assert_difference('Genero.count', -1) do
      delete genero_url(@genero)
    end

    assert_redirected_to generos_url
  end
end
