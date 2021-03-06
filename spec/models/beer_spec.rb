require 'rails_helper'

RSpec.describe Beer, type: :model do
  it { should belong_to(:bar_keep) }
  it { should validate_presence_of(:reviews) }
  it { should validate_presence_of(:favorites) }
end
