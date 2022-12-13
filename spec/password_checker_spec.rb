require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns true if a password is the correct length" do
        check = PasswordChecker.new
        result = check.check("password123")
        expect(result).to eq true 
    end
    it "fails when password is an invalid length" do
        check = PasswordChecker.new 
        expect{check.check("hello")}.to raise_error "Invalid password, must be 8+ characters."
    end
end