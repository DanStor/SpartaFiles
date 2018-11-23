require_relative "../lib/primeFactors.rb"

describe "Prime Factors" do

  before(:all) do
    @factorisation = PrimeFactors.new
  end

  it "must have a function called 'factors'" do
    expect(@factorisation).to respond_to :factors
  end

  it "must return largest prime factor of any given positive integer" do
    expect(@factorisation.factors 12).to eq 3
    expect(@factorisation.factors 13195).to eq 29
  end

  it "must return a result of 6857 when the number 600851475143 is input" do
    expect(@factorisation.factors 600851475143).to eq 6857
  end

end
