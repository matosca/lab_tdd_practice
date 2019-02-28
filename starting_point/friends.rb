def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if (person[:favourites][:snacks][1] == food)
    return true
  else
    return false
  end
end

def add_friend(person, new_friend)
  #friends_length = person[:friends].length
  person[:friends] << new_friend
  new_friends_length = person[:friends].length
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  remove_from_friends = person[:friends].length
end

def total_money(person)
  people_total_money = 0

    for person in @people
      people_total_money += person[:monies]
    end
    return people_total_money
end


def loan_of_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def everyone_favourite_food(person)
our_array = []
  for person in @people
   snacks = person[:favourites][:snacks]
   our_array = snacks.join
  end
end
