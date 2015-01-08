require 'rails_helper'

RSpec.describe Food, :type => :model do
	it { should validate_presence_of(:name)}
	it { should validate_presence_of(:weight)}
	it { should validate_presence_of(:vegan)}
	it { should validate_presence_of(:updated_at)}
end
