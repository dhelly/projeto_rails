require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test "layout_links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count = 2
    assert_select "a[href=?]", livro_path, count = 2
    assert_select "a[href=?]", contato_path, count = 2
    assert_select "a[href=?]", help_path, count = 2
  end
  
  
end
