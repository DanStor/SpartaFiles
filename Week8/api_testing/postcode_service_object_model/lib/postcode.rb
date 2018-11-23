require_relative "services/single_postcode_service.rb"
require_relative "services/multiple_postcodes_service.rb"


class Postcode

  def single_postcode_service
    SinglePostcodeService.new
  end

  def multiple_postcodes_service
    MultiplePostcodeService.new
  end
end

# postcode = Postcode.new
# puts postcode.single_postcode_service.get_single_postcode("E147BB")
# puts postcode.multiple_postcodes_service.get_multiple_postcodes(["OX163WA", "HP43LG"])
