def input_evaluation
    puts "Please enter a rating from 1 to 5"
    point = gets.to_i
    while true
      if point <= 0 || point > 5
        puts "Please enter from 1 to 5"
        point = gets.to_i
      else
        puts "Please enter your comments"
        comment = gets
        post = "point：#{point}　Comment：#{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
        break
      end
    end
  end
  
  # Define a method to check the results so far
  def show_result
    puts "Results so far"
    File.open("data.txt", "r") do |file|
      file.each_line do |line|
        puts line
      end
    end
  end
  
  while true
    puts "Select the process you want to implement"
    puts "1: Enter your evaluation points and comments"
    puts "2: Check the results so far"
    puts "3: Stop"
    num = gets.to_i
  
  # By cutting out the processing to a method, the case statement only calls the method.
    case num
    when  1
      input_evaluation
    when  2
      show_result
    when  3
      puts "End"
      break
    else
      puts "Please type in 1 to 3"
    end
  end