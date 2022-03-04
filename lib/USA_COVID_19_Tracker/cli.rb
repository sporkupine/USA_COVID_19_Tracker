class CLI
  def run
    scrape
    system('clear')
    CRUD.create_secure_users
    greeting
    login
    while menu != "exit"
    end 
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
    choose_option(input)
    return input
  end

  def list_options
        # <<- targets a multi-line string with a reference of DOC (DOC is an alias)
    # gsub allows for pattern replacement and regular expressions
    # /^\s*/ means target every white space before the the first character
    # the '' means replace every white space with an empty quote
    # try replacing '' with '_'
    puts <<-DOC.gsub /^\s*/, '' 
      1. Show 10 states with most active cases
      2. Show 10 states with least active cases
      3. Option 3
      Which one would you prefer?
    DOC
  end

  def choose_option(option)
    case option
      when "1"
        State.all[0..9].each_with_index do |state, i|
          puts "#{i + 1}. #{state.name} - confirmed cases: #{state.confirmed_cases}"
        end
      puts ""
      when "2"
        State.all.reverse[0..9].each_with_index do |state, i|
          puts "#{i + 1}. #{state.name} - confirmed cases: #{state.confirmed_cases}"
        end
      puts ""
      when "3"
        puts "Option 3 chosen"
      else
        puts "invalid selection, please try again."
    end
  end

  def login
    authenticated = false
    while authenticated != true
      puts "Please log in."
      puts "Enter your username:"
      username = gets.chomp.downcase
      puts "Enter your password:"
      password = gets.chomp.downcase
      if CRUD.authenticate_user(username, password)
        authenticated = true
      else
        puts "Authentication failed. Please try again."
      end
    end
  end

  def scrape
    Scraper.scrape_usa
    Scraper.scrape_states
  end
end