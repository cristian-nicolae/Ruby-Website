require 'test_helper'

class WatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @watch = watches(:one)
  end

  test "should get index" do
    get watches_url
    assert_response :success
  end

  test "should get new" do
    get new_watch_url
    assert_response :success
  end

  test "should create watch" do
    assert_difference('Watch.count') do
      post watches_url, params: { watch: { brand: @watch.brand, color: @watch.color, condition: @watch.condition, description: @watch.description, model: @watch.model, price: @watch.price, title: @watch.title } }
    end

    assert_redirected_to watch_url(Watch.last)
  end

  test "should show watch" do
    get watch_url(@watch)
    assert_response :success
  end

  test "should get edit" do
    get edit_watch_url(@watch)
    assert_response :success
  end

  test "should update watch" do
    patch watch_url(@watch), params: { watch: { brand: @watch.brand, color: @watch.color, condition: @watch.condition, description: @watch.description, model: @watch.model, price: @watch.price, title: @watch.title } }
    assert_redirected_to watch_url(@watch)
  end

  test "should destroy watch" do
    assert_difference('Watch.count', -1) do
      delete watch_url(@watch)
    end

    assert_redirected_to watches_url
  end
end
