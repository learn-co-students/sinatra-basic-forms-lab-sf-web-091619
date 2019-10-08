class Puppy
    attr_accessor :name, :breed, :months_old

    def initialize(name,breed,months_old)
        @name = name
        @breed = breed
        @months_old = months_old
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end


end
