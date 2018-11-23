require_relative "../lib/natMultiples.rb"

describe "Natural Multiples" do
  before(:each) do
    @naturalMults = NaturalMultiples.new
  end

  it "should add an array of numbers" do
    @naturalMults.iterator 1, 10

    expect(@naturalMults.array).to be_kind_of Array
    expect(@naturalMults).to respond_to :total
    expect(@naturalMults.total).to be_kind_of Integer
  end

  it "should be cleanly divisble by 3 (% = 0)" do
    @naturalMults.iterator 1, 10

    expect(@naturalMults).to respond_to :divisbleBy?
    expect(@naturalMults.divisbleBy?(9,3)).to be true
    expect(@naturalMults.divisbleBy?(99,3)).to be true
  end

  it "should be cleanly divisble by 5 (% = 0)" do
    @naturalMults.iterator 1, 10

    expect(@naturalMults).to respond_to :divisbleBy?
    expect(@naturalMults.divisbleBy?(90,5)).to be true
    expect(@naturalMults.divisbleBy?(18,5)).to be false
    expect(@naturalMults.divisbleBy?(5,5)).to be true
  end

  it "should only use multiple of 3 or 5" do
    @naturalMults.iterator 1, 10

    expect(@naturalMults.array).to eq [3,5,6,9,10]
  end

end
