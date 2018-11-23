require_relative "../lib/calc_engine.rb"

describe "basic calc_engine methods work" do
  # Do this once before ANY of the 'it' blocks
  before(:all) do
    @calc = CalcEngine.new
  end

  # Do this before EACH of the 'it' blocks
  # before(:each) do
  #   @calc = CalcEngine.new
  # end

  it "should add together numbers" do
    # Check there is a method called 'add'
    expect(@calc).to respond_to :add
    # Ensuer 'add' works correctly
    expect(@calc.add(2,2)).to eq 4
  end

  it "should add subtract numbers" do
    expect(@calc).to respond_to :subtract
    expect(@calc.subtract(2,2)).to eq 0
  end

  it "should multiply numbers" do
    expect(@calc).to respond_to :multiply
    expect(@calc.multiply(2,2)).to eq 4
  end

  it "should divide numbers" do
    expect(@calc).to respond_to :divide
    expect(@calc.divide(2,2)).to eq 1
  end

  it "should calculate a^b" do
    expect(@calc).to respond_to :power
    expect(@calc.power(2,3)).to eq 8
  end

  it "should return square root of a number" do
    expect(@calc).to respond_to :sqrt
    expect(@calc.sqrt(100)).to eq 10
  end
end
