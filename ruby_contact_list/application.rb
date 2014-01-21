class Application
 
  def initialize
    # Start with an empty array of contacts.
    # TODO: Perhaps stub (seed) some contacts so we don't have to create some every time we restart the app
    @contacts = []
  end
 
  def run
    input = ""
    set_quit = false

    until set_quit == true
      if input == ""
        input = " "
        show_main_menu
        input = gets.chomp
      end

      if input == "quit"
        set_quit = true
        abort("Have a nice day!")
      end

      if input == "new"
        puts "What is the first name?"
        input_first_name = gets.chomp
        puts "What is the last name?"
        input_last_name = gets.chomp
        puts "What is the email?"
        input_email = gets.chomp
        Contact.new(input_first_name,input_last_name,input_email)
        input = ""
      end

      if input == "list"
        #puts Contact.all
        #Contact.to_s
        Contact.instances.each do |thing|
          print thing
        end 
        input = ""
      end

     if input == "show"
        #puts Contact.all
        #Contact.to_s
        puts "Which id?"
        id_selected = gets.chomp.to_i
        print Contact.show_id(id_selected)
        input = ""
      end

    end

  end
  
  # Prints the main menu only
  def show_main_menu
    puts "Welcome to the app. What's next?"
    puts " new      - Create a new contact"
    puts " list     - List all contacts"
    puts " show :id - Display contact details"
    puts " quit     - Quit the application"
    print "> "
  end
 
end