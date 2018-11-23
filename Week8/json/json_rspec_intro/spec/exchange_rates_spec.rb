require_relative '../lib/exchange_rates.rb'

describe 'Exchange Rates' do
  before(:all) do
    @rates = ExchangeRates.new 'json/exchange_rates.json'
  end

  it "should return a hash" do
    expect(@rates.exchange_rates).to be_a Hash
  end

  it "should have all its rates as floats" do
    # @rates.get_rates.each_value do |value|
    #   expect(value).to be_a Float
    # end
    expect(@rates.get_rates_as_floats).to be true
  end

  it "should contain the base as EUR" do
    expect(@rates.get_base).to eq "EUR"
  end
end
