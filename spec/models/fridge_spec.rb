require 'rails_helper'

RSpec.describe Fridge, :type => :model do
	describe Fridge do
		it { should validate_presence_of(:location)}		
		it { should validate_presence_of(:brand)}		
		it { should validate_presence_of(:size)}

		it { should have_many(:foods) }
		it { should have_many(:drinks) }

		describe "::new" do
			it { expect(subject.class).to respond_to(:new) }
		end

		describe "::all" do
			it { expect(subject.class).to respond_to(:all) }
		end

		describe "::delete" do
			it { expect(subject.class).to respond_to(:delete) }
		end

	end
end
