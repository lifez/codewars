require_relative './main'

RSpec.describe Main do
  before(:each) do
    @main = Main.new
  end

  context "Basic Tests" do
    it "should return 1 -1 if input == 1 -1" do
      result = @main.high_and_low("1 -1")
      expect(result).to eq "1 -1"
    end

    it "should return 1 1 if input == 1 1" do
      result = @main.high_and_low("1 1")
      expect(result).to eq "1 1"
    end

    it "should return -1 -1 if input == -1 -1" do
      result = @main.high_and_low("-1 -1")
      expect(result).to eq "-1 -1"
    end

    it "should return 42 if input == 42" do
      result = @main.high_and_low("42")
      expect(result).to eq "42 42"
    end
  end
end
