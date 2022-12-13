require 'gratitudes'

RSpec.describe Gratitudes do
    it "adds a gratitude and returns it with a prefix" do
        gratitude = Gratitudes.new
        gratitude.add("radiators")
        result = gratitude.format
        expect(result).to eq "Be grateful for: radiators"
    end
    it " adds multiple gratitudes and returns them with a prefix and commas" do 
        gratitude = Gratitudes.new
        gratitude.add("socks")
        gratitude.add("radiators")
        gratitude.add("fire")
        result = gratitude.format
        expect(result).to eq "Be grateful for: socks, radiators, fire"
    end
end