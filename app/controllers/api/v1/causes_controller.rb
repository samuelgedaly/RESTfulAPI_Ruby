module Api
    module V1
        class CausesController < ApplicationController
            def index
                causes = Cause.order('event_date DESC');
                render json: {data:causes}
            end

            def show
                cause = Cause.find(params[:id])
                render json: {data:cause}
            end

            def create
                cause = Cause.new(cause_params)
                if cause.save
                    render json: {data:cause}
                else
                    render json: {data:cause.errors}
                end
            end

            def destroy
                cause = Cause.find(params[:id])
                cause.destroy
                render json: {data:cause}
            end

            def update
                cause = Cause.find(params[:id])
                if cause.update_attributes(cause_params)
                    render json: {data:cause}
                else
                    render json: {data:cause.errors}
                end
            end
            private
            def cause_params
                params.permit(:name, :story, :event_date, :donations)
            end
        end
    end
end