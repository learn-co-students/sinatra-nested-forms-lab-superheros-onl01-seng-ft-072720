class Team
    attr_accessor :name, :motto

    def self.all
        @@all ||= []
    end

    def initialize(hash)
        @name = hash[:name]
        @motto = hash[:motto]
    end
end