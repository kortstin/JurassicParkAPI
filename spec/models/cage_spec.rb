require 'rails_helper'


describe Cage, type: :model do

    it "is valid with valid attributes" do
        cage = Cage.new(name: "Cage", max_capacity: 10, power_status:"ACTIVE")
        expect(cage).to be_valid
    end

    it "is not valid without a name" do
        cage = Cage.new(name: nil)
        expect(cage).to_not be_valid
    end
    it "is not valid without a max capacity" do
        cage = Cage.new(max_capacity: nil)
        expect(cage).to_not be_valid
    end
    it "is not valid without a power status" do
        cage = Cage.new(power_status: nil)
        expect(cage).to_not be_valid
    end
    it 'contains dinosaurs when being powered down' do
        cage_count = Cage.where(power_status:"ACTIVE").count
        if cage_count > 0 and power_status == "DOWN"
             expect(cage).to_not be_valid
        end
    end
end
