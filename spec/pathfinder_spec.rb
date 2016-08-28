require '#{__dir__}/../../lib/pathfinder'

describe Pathfinder do
  context "Pathfinder class should have these methods" do
    testclass = Pathfinder.new("#{__dir__}/../test/portfolios/foo.por")
    it "should should have method simpletest" do
       expect(testclass).to respond_to(:simpletest)
    end
    it "should have method parse_languages" do
      expect(testclass).to respond_to(:parse_languages)
    end
    it "should have method parse_saves" do
      expect(testclass).to respond_to(:parse_saves)
    end
    it "should have method parse_attributes" do
      expect(testclass).to respond_to(:parse_attributes)
    end
    it "should have method parse_skills" do
      expect(testclass).to respond_to(:parse_skills)
    end
    it "should have method parse_weapons" do
      expect(testclass).to respond_to(:parse_weapons)
    end
    it "should have method parse_gear" do
      expect(testclass).to respond_to(:parse_gear)
    end
  end
end

