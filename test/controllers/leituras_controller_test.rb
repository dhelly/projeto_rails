require 'test_helper'

class LeiturasControllerTest < ActionController::TestCase
  setup do
    @leitura = leituras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leituras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leitura" do
    assert_difference('Leitura.count') do
      post :create, leitura: { autor: @leitura.autor, duracao: @leitura.duracao, mes: @leitura.mes, observ: @leitura.observ, titulo: @leitura.titulo, user_id: @leitura.user_id }
    end

    assert_redirected_to leituras_path
  end

  test "should show leitura" do
    get :show, id: @leitura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leitura
    assert_response :success
  end

  test "should update leitura" do
    patch :update, id: @leitura, leitura: { autor: @leitura.autor, duracao: @leitura.duracao, mes: @leitura.mes, observ: @leitura.observ, titulo: @leitura.titulo, user_id: @leitura.user_id }
    assert_redirected_to leitura_path(assigns(:leitura))
  end

  test "should destroy leitura" do
    assert_difference('Leitura.count', -1) do
      delete :destroy, id: @leitura
    end

    assert_redirected_to leituras_path
  end
end
