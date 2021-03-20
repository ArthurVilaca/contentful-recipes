class RecipesController < ApplicationController
    def index
        @products = helpers.contentful.entries(content_type: 'recipe')
    rescue
        redirect_to action: :error, status: 303
    end

    def show
        @product = helpers.contentful.entry(params[:id])
        if @product.fields.key?(:chef)
            @chef = helpers.contentful.entry(@product.chef.id)
        end
        @tags = []
        if @product.fields.key?(:tags)
            for tag in @product.tags
                @tags.push(helpers.contentful.entry(tag.id))
            end
        end
    rescue
        redirect_to action: :error, status: 303
    end

    def error
    end
end
