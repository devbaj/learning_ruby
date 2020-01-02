class CodingDojo

  @@number_of_branches = 0

  def initialize id, name, address
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@number_of_branches += 1
    puts "Created branch \##{@@number_of_branches}"
  end

  def hello
    puts "Hello Coding Dojo"
  end

  def display_all
    puts "Branch ID: #{@branch_id}"
    puts "Branch Name: #{@branch_name}"
    puts "Branch Address: #{@branch_address}"
  end

end

branch = CodingDojo.new(253, "San Francisco", "Sunnyvale CA")
branch.display_all
branch2 = CodingDojo.new(155, "Boston", "Boston MA")
branch2.display_all