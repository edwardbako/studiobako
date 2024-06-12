require "application_system_test_case"

class ApplicationsTest < ApplicationSystemTestCase
  setup do
    @lead = create :lead
  end

  test "visiting application page" do
    visit new_application_url

    assert_selector "h1", text: I18n.t("leads.new.header")
    assert_selector "form"
  end

  test "should create application" do
    visit new_application_url

    fill_in "lead_name", with: @lead.name
    fill_in "lead_company", with: @lead.company
    fill_in "lead_email", with: @lead.email
    fill_in "lead_phone", with: @lead.phone

    click_on I18n.t("helpers.submit.create", model: @lead.model_name.human)
    assert_text I18n.t("leads.success")
  end

  test "should not submit with empty fields" do
    visit new_application_url

    click_on I18n.t("helpers.submit.create", model: @lead.model_name.human)
    assert_text I18n.t("activerecord.errors.messages.blank")
  end
end
