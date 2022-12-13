require 'present'

RSpec.describe Present do 
    it "wraps and unwraps a present"do
        present = Present.new
        present.wrap("bike")
        result = present.unwrap
        expect(result).to eq "bike"
    end
    it "fails when contents are aready wrapped" do
        present = Present.new
        present.wrap("bike")
        expect { present.wrap("bike")}.to raise_error "A contents has already been wrapped."
    end
    it "fails when no contents have been wrapped" do
        present = Present.new
        expect { present.unwrap}.to raise_error "No contents have been wrapped."
    end
end