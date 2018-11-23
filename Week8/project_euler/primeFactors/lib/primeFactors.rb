require 'prime'
class PrimeFactors
  def factors x
    factors = Prime.prime_division x
    factors.flatten.max
  end
end
