require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "checks if a codeword is correct" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "checks if a codeword is wrong" do
        result = check_codeword("apple")
        expect(result).to eq "WRONG!"
    end
    it "checks if a codeword is close" do
        result = check_codeword("home")
        expect(result).to eq "Close, but nope."
    end
end