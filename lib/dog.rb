require 'pry'
class Dog
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name
        save
        #@@all << self  #need to do this in "save method"
        #self.save this is wrong 
    end

    def self.all
        @@all
    end

    def Dog.clear_all
        @@all.clear
    end

    def Dog.print_all
        #iterates over all Dog instances and puts their name to terminal
        @@all.each do |dogs|
            puts "#{dogs.name}"
        end
    end

    def save
        @@all << self
    end
end