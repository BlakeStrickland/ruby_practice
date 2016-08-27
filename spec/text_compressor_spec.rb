# require 'text_compressor.rb'
# require 'test/unit'

describe TextCompressor do

  it "should be able to add some text" do
    c = TextCompressor.new('')
    c.add_text( 'first second')
    c.unique.should == ['first', 'second']
    c.index.should == [0, 1]
  end

  it "should be able to add a word" do
    c = TextCompressor.new('')
    c.add_text( 'first')
    c.unique.should == ['first']
    c.index.should == [0]
  end

  it "should be able to add some text" do
    c = TextCompressor.new('hellow world')
    c.unique_index_of ('hello').should == 0
    c.unique_index_of ('world').should == 1
  end

end
