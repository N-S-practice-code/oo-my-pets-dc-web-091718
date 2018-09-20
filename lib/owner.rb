class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all=[]
  def initialize(species)
    @species=species
    @@all << self
    @pets={:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.count
    @@all.count
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all=[]
  end
  
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_pet=Fish.new(name)
    @pets[:fishes] << new_pet
  end
  
  def buy_cat(name)
    new_pet=Fish.new(name)
    @pets[:cats] << new_pet
  end
  
  def buy_dog(name)
    new_pet=Dog.new(name)
    @pets[:dogs] << new_pet
  end
  
  def walk_dogs
    @pets[:dogs].each{|pet| pet.mood='happ'}
  end
  
  def play_with_cats
    @pets[:dogs].each{|pet| pet.mood='happ'}
  end
  
  def feed_fish
    @pets[:dogs].each{|pet| pet.mood='happy'}
  end
  
  def sell_pets
    @pets.values.each {|pets| pets.each{|pet| pet.mood='nervous'}}
  end
    
  def list_pets
    "I have #{pets[:fish].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
  
  
end