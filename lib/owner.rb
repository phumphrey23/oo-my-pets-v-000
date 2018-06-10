class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
		@@all.size
	end

  def self.reset_all
		OWNERS.clear
	end

  def say_species
    "I am a #{species}."
  end

  def buy_fishes(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cats(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_cats(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
    dog.mood = "happy"
   end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
    cat.mood = "happy"
   end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
    fish.mood = "happy"
   end
  end

  def sell_pets
    @pets.each do |pet|
    pet.mood = "nervous"
  end
    @pets.clear
  end

end
