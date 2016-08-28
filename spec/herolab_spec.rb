require '#{__dir__}/../../lib/herolab'


describe Herolab do
  context "Herolab class should have these methods" do
    testclass = Herolab.new("#{__dir__}/../test/portfolios/foo.por")
    it "should have method read_index_file" do
      expect(testclass).to respond_to(:read_index_file)
    end
    it "should have method read_herolab_character" do
      expect(testclass).to respond_to(:read_herolab_character)
    end
    it "should have method get_character_files" do
      expect(testclass).to respond_to(:get_character_files)
    end
    it "should have method setporfile" do
      expect(testclass).to respond_to(:setporfile)
    end
    it "should have method getporfile" do
      expect(testclass).to respond_to(:getporfile)
    end
    it "should have method set_char_file_list" do
      expect(testclass).to respond_to(:set_char_file_list)
    end
    it "should have method get_char_file_list" do
      expect(testclass).to respond_to(:get_char_file_list)
    end
  end
end

