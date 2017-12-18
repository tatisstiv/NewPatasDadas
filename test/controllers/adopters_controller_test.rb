require 'test_helper'

class AdoptersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adopter = adopters(:one)
  end

  test "should get index" do
    get adopters_url
    assert_response :success
  end

  test "should get new" do
    get new_adopter_url
    assert_response :success
  end

  test "should create adopter" do
    assert_difference('Adopter.count') do
      post adopters_url, params: { adopter: { animal: @adopter.animal, email: @adopter.email, name: @adopter.name, telephone: @adopter.telephone } }
    end

    assert_redirected_to adopter_url(Adopter.last)
  end

  test "should show adopter" do
    get adopter_url(@adopter)
    assert_response :success
  end

  test "should get edit" do
    get edit_adopter_url(@adopter)
    assert_response :success
  end

  test "should update adopter" do
    patch adopter_url(@adopter), params: { adopter: { animal: @adopter.animal, email: @adopter.email, name: @adopter.name, telephone: @adopter.telephone } }
    assert_redirected_to adopter_url(@adopter)
  end

  test "should destroy adopter" do
    assert_difference('Adopter.count', -1) do
      delete adopter_url(@adopter)
    end

    assert_redirected_to adopters_url
  end
end
