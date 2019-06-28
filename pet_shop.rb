def pet_shop_name(hash)
  return hash[:name]
end

def total_cash(hash)
  return hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, value)
  return hash[:admin][:total_cash] += value
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, num_of_pets)
  return hash[:admin][:pets_sold] += num_of_pets
end

def stock_count(hash)
  return hash[:pets].length
end

def pets_by_breed(hash, type)
  breeds = []
  for pet in hash[:pets]
    if pet[:breed] == type
       breeds.push(pet)
    end
  end
  return breeds
end

def find_pet_by_name(hash, name)
  for pet in hash[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(hash, name)
  for pet in hash[:pets]
    if pet[:name] == name
      hash[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(hash, new_pet)
  hash[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  return customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  end
  return false
end

# def customer_can_afford_pet(customer, new_pet)
#   if customer[:cash] >= new_pet[:price]
#     return true
#   else
#     return false
#   end
# end

def sell_pet_to_customer(hash, pet, customer)
  return customer[:pets].push(pet), hash[:pets].delete(pet),hash[:admin][:pets_sold] += 1, customer[:cash] -= pet[:price], hash[:admin][:total_cash] += pet[:price]
end
