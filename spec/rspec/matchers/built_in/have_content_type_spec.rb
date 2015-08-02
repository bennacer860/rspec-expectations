module RSpec
  module Matchers
    RSpec.describe "have_content_type" do

      it "matches when actual == expected" do
        object = Struct.new(:content_type =>'xml')
        expect(object.have_content_type('xml')).to be_truthy
      end

      it "does not matches when actual != expected" do
        object = Struct.new(:content_type => 'json')
        expect(object.to have_content_type('xml')).to be_falsy
      end

    end

  end
end
