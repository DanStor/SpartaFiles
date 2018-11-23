Before("@numbers") do
  puts "This test involves numbers"
end

After do
  puts "Look at these tests, aren't they great"
end

Before("@startData") do
  @people = ["Kevin", "Keith", "Gary", "Brian"]
end
