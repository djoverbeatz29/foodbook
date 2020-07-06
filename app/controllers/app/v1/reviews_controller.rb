class Api::V1::ReviewsController < ApplicationController

    private

    def reviews_params
        params.require(:review).permit(:content)
    end

end