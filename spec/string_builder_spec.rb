require 'string_builder'

RSpec.describe StringBuilder do
    it "takes a string input and returns it" do
        string = StringBuilder.new
        string.add("Hello World")
        result = string.output
        expect(result).to eq "Hello World"
    end
    it "returns the length of string input" do
        string = StringBuilder.new
        string.add("Hello")
        result = string.size
        expect(result).to eq 5
    end
end
