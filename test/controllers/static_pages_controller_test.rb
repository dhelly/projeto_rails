require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_select "title", "Home - Projeto RAD"
    assert_response :success
  end

  test "should get livro" do
    get :livro
    assert_response :success
    assert_select "title", "Livro - Projeto RAD"
  end

  test "should get contato" do
    get :contato
    assert_response :success
    assert_select "title", "Contato - Projeto RAD"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help - Projeto RAD"
  end

end
