require_relative '../main'
require 'spec_helper'

RSpec.describe Encoder do
  before(:each) do
    @encoder = Encoder.new
  end

  context "Basic Tests" do
    it "should return ((( for din" do
      result = @encoder.duplicate_encode "din"
      expect(result).to eq "((("
    end

    it "should return ()()() for recede" do
      result = @encoder.duplicate_encode "recede"
      expect(result).to eq "()()()"
    end

    it "should return )())()) for Success" do
      result = @encoder.duplicate_encode "Success"
      expect(result).to eq ")())())"
    end

    it "should return ()(((())()) for CodeWarrior" do
      result = @encoder.duplicate_encode "CodeWarrior"
      expect(result).to eq "()(((())())"
    end

    it "should return )()))()))))()( for Supralapsarian" do
      result = @encoder.duplicate_encode "Supralapsarian"
      expect(result).to eq ")()))()))))()("
    end

    it "should return )))))) for iiiiii" do
      result = @encoder.duplicate_encode "iiiiii"
      expect(result).to eq "))))))"
    end

  end
end
