require 'test_helper'

module Adobbs
  class CommentsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    test "should get index" do
      get comments_index_url
      assert_response :success
    end

    test "should get create" do
      get comments_create_url
      assert_response :success
    end

    test "should get show" do
      get comments_show_url
      assert_response :success
    end

    test "should get update" do
      get comments_update_url
      assert_response :success
    end

    test "should get destroy" do
      get comments_destroy_url
      assert_response :success
    end

  end
end
