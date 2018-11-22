def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)

  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end

  return false

end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)

  total = 0
  for person in people
    total += person[:monies]
  end

  return total
end

def lend_money(lender, lendee, loan_amount)
  lender[:monies] -= loan_amount
  lendee[:monies] += loan_amount
end

def combined_food(people)

  all_foods = []
  for person in people
    for food in person[:favourites][:snacks]
      all_foods.push(food)
    end
  end
  return all_foods
end

def no_friends(people)
  all_friendless_people = []
  for person in people
    if person[:friends].length == 0
      all_friendless_people.push(person[:name])
    end
  end
  return all_friendless_people
end
