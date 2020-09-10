class Team
    attr_accessor :name, :motto

    def initialize(name:, motto:)
        self.name = name
        self.motto = motto
        # attr.each do |k,v|
        #     self.send('#{k}'=, v)
    end
end