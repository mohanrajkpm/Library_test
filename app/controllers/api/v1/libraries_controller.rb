module Api
  module V1
    class LibrariesController < ApplicationController
      def index
        books = Book.all.includes(:user)
        render json: BookSerializer.new(books).serialized_json
      end
    end
  end
end
