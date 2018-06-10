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

  def pets
  end

end
