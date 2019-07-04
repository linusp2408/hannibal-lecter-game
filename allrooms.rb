class Room

  def enter()
    puts "This room isn't built yet. Inform a developer."
    puts "Thank you for your playing our game."
  end
end


class Yard < Room

  def enter()
    puts "Now you are there. Standing alone in the dark, seeing the psychiatry,"
    puts "knowing that the serial killer Dr. Hannibal Lecter escaped from his"
    puts "cell. You aren't quite happy with your job of having to find him,"
    puts "but you've found many killers before, so why should that matter?"
    puts "With that in mind, you decide what you want to do."
    puts "Do you want to go further to the building?"
    puts "or"
    puts "Do you just want to wait?"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "wait"
      # die 
    elsif choice == "go further" || choice == "go"
      # next room
    else
      # take something else
    end
  end
end


class InFrontPsychiatry < Room

  def enter()
    puts "You went further and now you are standing in front of the"
    puts "psychiatry. You wonder what you might do now..."
    puts "Do you want to go into the building?"
    puts "or"
    puts "Do you want to go around first?"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "go around" || choice == "around"
      # die
    elsif choice == "go in"
      # next room
    else
      # take something else
    end
  end
end


class Hallway < Room

  def enter()
    puts "Now you are in the psychiatry and you hear a loud scream."
    puts "It sounds like it comes from above, but now you cannot hear it"
    puts "anymore. Your instincts are alarmed, what do you do?"
    puts "Do you run into the second floor?"
    puts "or"
    puts "Do you take it slow and slowly take the stairs?"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "run"
      # die by a trap
    elsif choice == "take it slow"
      # dodge trap get into the second floor
    else
      # take something else
    end
  end
end


class SecondFloor < Room

  def enter()
    puts "By the time you took the stairs and dodged one of the traps,"
    puts "you get back in mind that Lecter has a favor of horrible traps"
    puts "and that he loves to built them."
    puts "You know where the old cell of Hannibal is so you simply go in."
    puts "You hope that you find either himself or a hint."

    # return next room
  end
end


class Cell < Room

  def enter()
    puts "You enter the cell of Hannibal Lecter and see the several books"
    puts "he reads. But you do not find anything. As alwyas you have "
    puts "no doubt that Hannibal Lecter is one of the smartest persons"
    puts "you have met in your entire carreer, facing many other serial"
    puts "killers."
    puts "Everything is clean and you do not find a single hint."
    puts "luckily there is only one room left in the second floor"
    puts "so you go into the store room"

    # return next room
  end
end


class Storeroom < Room

  def enter()
    puts "You enter the room and instantly see Hannibal Lecter."
    puts "At the moment you can just see his back, but now he turns"
    puts "you know you are going to have to fight him. There is one"
    puts "problem: He found a knife..."
    puts "Do you fight him?"
    puts "or"
    puts "Do you run away and risk that he escapes?"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "run away" || choice == "run"
      # run away lecter escapes
    elsif choice == "fight him" || choice == "fight"
      # return fight room (state)
    else
      # take something else
    end
  end
end


class Fight
end

class Death
  def enter()
    death_ways = { 1 => "Haha, you're dead!",
                   2 => "My mom could do better than that...",
                   3 => "LOL, you died.",
                   4 => "You shouldn't try again...",
                   5 => "Take another choice!"
                  }
    number_to_die = rand(1..5)
    puts death_ways[number_to_die]
    puts "You died."
   end
end
