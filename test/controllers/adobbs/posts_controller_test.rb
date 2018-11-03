require 'test_helper'

module Adobbs
  class PostsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get posts_index_url
      assert_response :success
    end

    test "should get create" do
      get posts_create_url
      assert_response :success
    end

    test "should get show" do
      get posts_show_url
      assert_response :success
    end

    test "should get update" do
      get posts_update_url
      assert_response :success
    end

    test "should get destroy" do
      get posts_destroy_url
      assert_response :success
    end

  end
end
