require 'json'

class ExchangeRates

  attr_accessor :exchange_rates

  def initialize json_file
    @exchange_rates = JSON.parse(File.read(json_file))
  end

  def get_base
    @exchange_rates["base"]
  end

  def get_rates_as_floats
    @exchange_rates["rates"].each_value do |value|
      unless value.is_a? Float
        return false
      end

      return true
    end
  end

end
