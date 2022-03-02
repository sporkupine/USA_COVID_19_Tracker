class CLI
  def run
    system('clear')
    greeting
    menu
    end_program
  end

  def greeting
    puts "Welcome to the CLI COVID-19 tracker."
  end

  def end_program
    puts "See you later!"
  end

  def menu
    list_options
    input = gets.chomp.downcase
  end

  def list_options
        # <<- targets a multi-line string with a reference of DOC (DOC is an alias)
    # gsub allows for pattern replacement and regular expressions
    # /^\s*/ means target every white space before the the first character
    # the '' means replace every white space with an empty quote
    # try replacing '' with '_'
    puts <<-DOC.gsub /^\s*/, '' 
      1.
      2.
      3.
      Which one would you prefer?
    DOC
  end
end