require 'counter'

RSpec.describe Counter do
    it "increases counter by input amount & returns amount counted so far" do
        counter = Counter.new
        counter.add(6)
        result = counter.report
        expect(result). to eq "Counted to 6 so far."
    end
    it "increases counter by input amount & returns amount counted so far" do
        counter = Counter.new
        counter.add(6)
        counter.add(9)
        result = counter.report
        expect(result). to eq "Counted to 15 so far."
    end
end