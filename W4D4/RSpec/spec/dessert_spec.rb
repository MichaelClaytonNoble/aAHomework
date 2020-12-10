require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert) {Dessert.new("Green Tea Icecream", 100, chef) }
  let(:chef) { double("chef") }

  describe "#initialize" do
  
    it "sets a type" do 
      expect(dessert.type).to eq("Green Tea Icecream")
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(100)
    end 
    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("Ice", "100", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients).to be_empty
      dessert.add_ingredient("Heavy Cream")
      expect(dessert.ingredients).to include("Heavy Cream")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients_array = dessert.ingredients
      dessert.mix!
      expect(dessert.ingredients).to eq(ingredients_array)
    end
  end

  describe "#eat" do

    it "subtracts an amount from the quantity" do 
      dessert.eat(99)
      expect(dessert.quantity).to eq(1)
    end

    it "raises an error if the amount is greater than the quantity" do 
      expect {dessert.eat(100000)}.to raise_error('not enough left!')
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Mako Nobo")
      expect(dessert.serve).to include("Mako Nobo")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
