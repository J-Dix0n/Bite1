require 'greet'

RSpec.describe "greet method" do
    it "adds user's name to greeting" do
        result = greet("Bob")
        expect(result). to eq "Hello, Bob!"
    end
end