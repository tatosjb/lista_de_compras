require 'rails_helper'

RSpec.describe ListItem, type: :model do
  it { is_expected.to validate_numericality_of(:quantity).only_integer }

  it { is_expected.to belong_to(:product) }
  it { is_expected.to belong_to(:list) }
end