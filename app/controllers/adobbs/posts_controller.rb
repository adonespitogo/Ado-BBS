require_dependency "adobbs/application_controller"

module Adobbs
  class PostsController < ApplicationController

    before_action :authenticate_user!, only: [:create, :update, :destroy]

    def index
    end

    def create
    end

    def show
    end

    def update
    end

    def destroy
    end
  end
end
