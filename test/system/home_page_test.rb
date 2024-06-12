require "application_system_test_case"

class HomePageTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url
  
    assert_selector "h1", text: I18n.t("welcome.index.main-heading")
    assert_selector ".btn", text: I18n.t("welcome.index.action")
  end
end
