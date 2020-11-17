class KleerBot
    def initialize(idioma)
        @idioma = idioma
    end
    def saludar(nombre)
        if(@idioma == "EN")
            return "Hello #{nombre}!"
        else
            return "Hola #{nombre}!" 
        end
    end
end

kleer_bot = KleerBot.new(ARGV[1])
puts kleer_bot.saludar(ARGV[0])