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

def favourite_food(people)
  total_snacks = []
  for person in people
    total_snacks += person[:favourites][:snacks]
  end
  return total_snacks
end

# def favourite_snack(people)
#   all_snacks = []
#   for person in people
#     all_snacks += person[:favourites][:snacks]
#   end
#   return all_snacks
# end

def no_friends(people)
  friendless = Array.new()

  for person in people
    person[:friends] == nil
  end
  return friendless.push(person[:name])
end
