class Pet 
attr_accessor :name
@@all = []
# self.attr_accessor(:name, :breed)
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
        "Hello"
       return "Goodbye"
        12345
    end
    # def name
    #     @name
    # end
end

fido = Pet.new("Fido")
p Pet.all