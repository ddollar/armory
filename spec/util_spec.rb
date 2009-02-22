require File.join(File.dirname(__FILE__), 'spec_helper')

include Armory
include Armory::Exception

describe Armory::Util do

  describe '#valid_url?' do

    it 'should raise an InvalidURLType exception with an invalid type' do
      lambda { Util::valid_url?('', :invalid) }.should raise_error(InvalidURLType)
    end

    it 'should not raise an InvalidURLType exception with a valid type' do
      lambda { Util::valid_url?('', :guild) }.should_not raise_error(InvalidURLType)
    end

    it 'should return true for valid urls' do
      load_fixture('url/valid').each do |fixture|
        Util::valid_url?(fixture[:url], fixture[:type]).should be_true
      end
    end

    it 'should return false for invalid urls' do
      load_fixture('url/invalid').each do |fixture|
        Util::valid_url?(fixture[:url], fixture[:type]).should_not be_true
      end
    end

  end

  describe '#armory_fetch_guild' do
  end

end
