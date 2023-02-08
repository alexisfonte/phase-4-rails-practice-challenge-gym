class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordNotFound, with: :not_found_error

    private

    def not_found_error(exception)
        render json: {errors: "#{excepotion.model} not found"}, status: :not_found
    end
end
