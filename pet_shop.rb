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
  return
end

def remove_pet_by_name(hash, name)
  for pet in hash[:pets]
    if pet[:name] == name
      hash[:pets].delete(pet)
    end
  end
end
