class Superhero
    attr_accessor :name, :power, :bio
    SUPERS = []
    def initialize(params)
        @name = params[:name]
        @power = params[:power]
        @bio = params[:bio]
        SUPERS << self
    end
    def self.all
        SUPERS
    end
    def self.clear
        SUPERS.clear
    end
    def save
        self.class.all << self
    end
end