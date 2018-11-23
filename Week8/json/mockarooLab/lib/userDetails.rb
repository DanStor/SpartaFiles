require 'json'

class UserDetails
  attr_accessor :userDetails

  def initialize json_file
    @userDetails = JSON.parse(File.read(json_file))
  end

  def getUser user
    @userDetails[user]
  end

  def getField user, string
    @userDetails[user][string]
  end

  def getFriends user
    @userDetails[user]["friends"]
  end

  def getAllVehicles
    vehicleArray = []
    @userDetails.each do |user|
      vehicleArray.push(user["vehicles"])
    end

    return vehicleArray
  end

  def vehiclesHaveDescriptions?
    array = getAllVehicles.flatten
    array.each do |veh|

      if veh["description"].empty?
        return false
      end

    end

    return true
  end
end
