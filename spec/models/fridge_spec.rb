require 'rails_helper'

RSpec.describe Fridge, :type => :model do
		it { should validate_presence_of(:location)}		
		it { should validate_presence_of(:brand)}		
		it { should validate_presence_of(:size)}

		it { should have_many(:foods) }
		it { should have_many(:drinks) }

		context "at food capacity" do
			it "shouldn't be able to add new food" do
				@fridge = Fridge.create(location: "somewhere", brand: "some brand", size: 10, max_food_items: 1)
				@first_food = @fridge.foods.create(name: "Milk", weight: 2, vegan: false)

				@second_food = @fridge.foods.create(name: "Rotten Eggs", weight: 1, vegan: false)
				expect(@second_food.persisted?).to equal(false)
			end
		end

		context "at drink capacity" do
			it "shouldn't be able to add new drinks" do
				@fridge = Fridge.create(location: "somewhere", brand: "some brand", size: 10, max_drink_oz: 50)

				@drink = @fridge.drinks.create(name: "big drank", size: 51, alcoholic: true)
				expect(@drink.persisted?).to equal(false)
			end
		end

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
