require'pry'
class Member
    attr_accessor :name, :power, :bio
    @@all=[]

    def initialize(hash)
        # binding.pry
        @name = hash[:name]
        @power = hash[:power]
        @bio = hash[:bio]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all =[]
    end
end