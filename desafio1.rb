class Desafio1

    def initialize(cantidad,precio)
        @cant = cantidad
        @precio = precio
    end
    
    def mostrarDatos()
        
        return "La cantidad ingresada es: ##{@cant}"+
        "\nEl precio unitario ingresado es: $#{@precio}"
    end

end

kleer_bot = Desafio1.new(ARGV[0],ARGV[1])
puts kleer_bot.mostrarDatos()