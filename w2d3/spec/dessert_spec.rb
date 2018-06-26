require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", :bake => 400) }
  subject(:dessert) { Dessert.new("cookie", 20, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("cookie")
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(20)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
    expect { Dessert.new("cake", "two", "Steve") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    before(:each) { dessert.add_ingredient("butter") }

    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to include("butter")
    end
  end

  describe "#mix!" do
    before(:each) do
      dessert.add_ingredient("butter")
      dessert.add_ingredient("chocolote")
      dessert.add_ingredient("egg")
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("cookie mix")
    end
    it "shuffles the ingredient array" do
      ingredients_copy = dessert.ingredients.dup
      dessert.mix!
      expect(dessert.ingredients).to_not eq(ingredients_copy)
    end
  end

  describe "#eat" do
    before(:each) { dessert.eat(3) }
    it "subtracts an amount from the quantity" do
      expect(dessert.quantity).to eq(17)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(24) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:name).and_return("Chef chef the Great Baker")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
