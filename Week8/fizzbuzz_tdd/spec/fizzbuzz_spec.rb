require_relative "../lib/fizzbuzz.rb"

describe "FizzBuzz" do

  before(:all) do
    @fizzbuzz = FizzBuzz.new
  end

  it "should be cleanly divisble by 3 (% = 0)" do
    # Question mark on 'divisbleBy?' should return a boolean due to '?' convention.
    expect(@fizzbuzz).to respond_to :divisbleBy?
    expect(@fizzbuzz.divisbleBy?(9,3)).to be true
    expect(@fizzbuzz.divisbleBy?(99,3)).to be true
  end

  it "should be cleanly divisble by 5 (% = 0)" do
    # Question mark on 'divisbleBy?' should return a boolean due to '?' convention.
    expect(@fizzbuzz).to respond_to :divisbleBy?
    expect(@fizzbuzz.divisbleBy?(90,5)).to be true
    expect(@fizzbuzz.divisbleBy?(18,5)).to be false
    expect(@fizzbuzz.divisbleBy?(5,5)).to be true
  end

  it "should generate a list of numbers to test" do
    @fizzbuzz.iterator 1, 15
    expect(@fizzbuzz.array).to be_kind_of Array
    expect(@fizzbuzz.array[0]).to be_kind_of String
    expect(@fizzbuzz.array.length).to be_kind_of Integer
    expect(@fizzbuzz.array.length).to eq 15
  end

  it "should apply Fizz and Buzz to any given range" do
    @fizzbuzz.iterator 1, 15
    expect(@fizzbuzz.array[2]).to eq "Fizz"
    expect(@fizzbuzz.array[4]).to eq "Buzz"
    expect(@fizzbuzz.array[14]).to eq "FizzBuzz"
  end

end
