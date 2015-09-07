require 'rails_helper'

RSpec.describe Api::ProductsController, type: :controller do
  describe "GET #index" do
    let!(:sabao) { Product.create(name: "Sabão") }
    let!(:arroz) { Product.create(name: "Arroz") }

    before { get :index }

    it "responds successfully with an HTTP 200 status code" do
      expect(response).to have_http_status(200);
    end

    it "renders the JSON" do
      expected = ActiveModel::ArraySerializer.new([sabao, arroz],
        each_serializer: ProductSerializer, root: false).to_json

      expect(response.body).to eql(expected)
    end
  end
end