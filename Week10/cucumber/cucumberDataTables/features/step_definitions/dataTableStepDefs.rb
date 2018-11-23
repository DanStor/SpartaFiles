Given("I have a data table") do |table|
  @table = table.rows
end

Then("I am able to print out name and role to the command line") do
  @table.each do |i|
    puts "#{i[0]} has the role of #{i[1]}"
  end
end
