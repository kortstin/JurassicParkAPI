require 'rails_helper'

describe Dinosaur, type: :model do

    it "is valid with valid attributes" do
        dinosaur = Dinosaur.new(name:"Yellow", species:"Tyrranosaurus", diet_type:"Carnivore", cage_id: 7)
        expect(dinosaur).to be_valid
    end

    it "is not valid without a name" do
        dinosaur = Dinosaur.new(name: nil)
        expect(dinosaur).to_not be_valid
    end
    it "is not valid without a max capacity" do
        dinosaur = Dinosaur.new(species: nil)
        expect(dinosaur).to_not be_valid
    end
    it "is not valid without a power status" do
        dinosaur = Dinosaur.new(diet_type: nil)
        expect(dinosaur).to_not be_valid
    end
end