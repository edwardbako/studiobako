require "test_helper"

class LeadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lead = build :lead
  end

  test "should get new" do
    get new_application_url
    assert_response :success
  end

  test "should create lead" do
    assert_difference("Lead.count") do
      post application_url, params: { lead: { name: @lead.name,
                                              company: @lead.company,
                                              email: @lead.email,
                                              phone: @lead.phone,
                                              description: @lead.description
       } }
    end

    assert_redirected_to root_url
  end

  test "should rerender with errors" do
    post application_url params: { lead: { name: nil }}

    assert_response :unprocessable_entity
  end
end
