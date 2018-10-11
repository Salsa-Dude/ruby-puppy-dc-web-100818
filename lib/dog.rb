require 'pry'

class Dog
  attr_reader :name

  @@all = []
  
  def initialize(name)
    # Initialize already does the attr_writer
    @name = name
    @@all << self
  end

  def self.clear_all 
    @@all.clear
  end

  def self.all
    puts @@all.map{|dog_obj| dog_obj.name }
  end

end 