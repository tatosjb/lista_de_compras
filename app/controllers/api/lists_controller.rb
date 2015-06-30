class Api::ListsController < ApplicationController
  def filtered_params
    params.require(:list).permit(:name, list_items_atributes: [:id, :list_id, :product_id, :quantity, :_destroy])
  end
end
