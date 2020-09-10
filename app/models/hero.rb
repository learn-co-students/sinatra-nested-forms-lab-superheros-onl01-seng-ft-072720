class Hero
    attr_accessor :name, :power, :bio, :team

    def initialize(attr)
        attr.each do |k,v|
            self.send("#{k}=", v)
        end
    end
end