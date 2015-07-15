require 'rails_helper'

RSpec.describe Product, type: :model do
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to have_many(:list_items).dependent(:restrict_with_error) }
end