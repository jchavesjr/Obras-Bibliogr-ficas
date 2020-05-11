class Api::V1::AuthorsController < ApplicationController

    before_action :validate_number_names



    def index
        author = Author.new
        formatted = author.filter_size_names(params[:number_names], params[:name])
        render json: {:status=>"success", :code=>200, :message=>"Formatted Author Name", data: formatted}
    end


    private

    def validate_number_names
        author = Author.new
        if author.verify_number_names(params[:number_names], params[:name])
        else
            render json: {:status=>"invalid", :code=>422, :message=>"number of names must equal the number of names"}
        end
    end

    def author_params
        params.permit(:number_names, :name)
    end
end
