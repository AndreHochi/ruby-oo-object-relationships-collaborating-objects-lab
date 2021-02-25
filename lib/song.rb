require 'pry'

class Song
 
    attr_accessor :name, :artist


    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        self.class.all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
        value = Artist.find_or_create_by_name(name)
        @artist = value
    end

    def self.new_by_filename(filename)
        value = filename.split(" - ")
        temp = self.new(value[1])
        temp.artist = Artist.find_or_create_by_name(value[0])
        return temp
    end




end