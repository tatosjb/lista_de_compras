class Api::ListsController < ApplicationController

  def index
    render json: List.all, each_serializer: ListPreviewSerializer
  end

  def filtered_params
    params.require(:list).permit(:name, list_items_atributes: [:id, :list_id, :product_id, :quantity, :_destroy])
  end
end
