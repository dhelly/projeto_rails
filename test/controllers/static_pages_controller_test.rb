require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
def setup
   @base_title = "Projeto RAD"
end
  
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home - #{@base_title}"
  end

  test "should get livro" do
    get :livro
    assert_response :success
    assert_select "title", "Livro - #{@base_title}"
  end

  test "should get contato" do
    get :contato
    assert_response :success
    assert_select "title", "Contato - #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help - #{@base_title}"
  end

end
