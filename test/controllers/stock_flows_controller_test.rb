require 'test_helper'

class StockFlowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_flow = stock_flows(:one)
  end

  test "should get index" do
    get stock_flows_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_flow_url
    assert_response :success
  end

  test "should create stock_flow" do
    assert_difference('StockFlow.count') do
      post stock_flows_url, params: { stock_flow: { amount: @stock_flow.amount, in_out: @stock_flow.in_out, kind: @stock_flow.kind, name: @stock_flow.name, origin_destiny: @stock_flow.origin_destiny, time: @stock_flow.time } }
    end

    assert_redirected_to stock_flow_url(StockFlow.last)
  end

  test "should show stock_flow" do
    get stock_flow_url(@stock_flow)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_flow_url(@stock_flow)
    assert_response :success
  end

  test "should update stock_flow" do
    patch stock_flow_url(@stock_flow), params: { stock_flow: { amount: @stock_flow.amount, in_out: @stock_flow.in_out, kind: @stock_flow.kind, name: @stock_flow.name, origin_destiny: @stock_flow.origin_destiny, time: @stock_flow.time } }
    assert_redirected_to stock_flow_url(@stock_flow)
  end

  test "should destroy stock_flow" do
    assert_difference('StockFlow.count', -1) do
      delete stock_flow_url(@stock_flow)
    end

    assert_redirected_to stock_flows_url
  end
end
