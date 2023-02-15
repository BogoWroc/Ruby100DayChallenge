# frozen_string_literal: true

ANSWERS = ['It is certain', 'It is decidedly so', 'Without a doubt', 'Yes – definitely', 'You may rely on it',
           'As I see it, yes', 'Most likely', 'Outlook good', 'Yes Signs point to yes', 'Reply hazy', 'try again',
           'Ask again later', 'Better not tell you now', 'Cannot predict now', 'Concentrate and ask again',
           'Dont count on it', 'My reply is no', 'My sources say no', 'Outlook not so good', 'Very doubtful'].freeze

def ask_user(question)
  puts(question)
  print('> ')
  gets.chomp
end

def display_header
  puts('  __  __          _____ _____ _____    ___  ')
  puts(' |  \/  |   /\   / ____|_   _/ ____|  / _ \ ')
  puts(' | \  / |  /  \ | |  __  | || |      | (_) |')
  puts(' | |\/| | / /\ \| | |_ | | || |       > _ < ')
  puts(' | |  | |/ ____ \ |__| |_| || |____  | (_) |')
  puts(' |_|  |_/_/    \_\_____|_____\_____|  \___/ ')
  puts('')
  puts('')
  puts('')
end

def play_magic_8_ball
  _ = ask_user('Ask me a question.')
  to = ANSWERS.length - 1
  puts(ANSWERS[rand(0..to)])
  puts('I hope that helped!')
  replay
end

def replay
  reply = ask_user('Do you have another question? [Y/N]')

  case reply
  when 'Y'
    play_magic_8_ball
  when 'N'
    exit(0)
  else
    puts('I apologies, I did not catch that. Please repeat.')
  end

  replay
end

# Main block of code
if __FILE__ == $PROGRAM_NAME
  display_header
  name = ask_user('Hello World, I am the Magic 8 Ball, What is your name?')
  puts("Hello #{name}!")

  play_magic_8_ball
end
