class Desafio1

    def initialize(cantidad,precio,estado)
        @cant = cantidad
        @precio = precio
        @estado = estado
    end
    
    def mostrarDatos()
        subTotal = @cant.to_f*@precio.to_f
        return "\nLa cantidad ingresada es: ##{@cant}"+
        "\nEl precio unitario ingresado es: $#{@precio}"+
        "\nEl estado ingresado es: #{@estado}"+
        "\n\nSubtotal: #{subTotal}"
    end

end

kleer_bot = Desafio1.new(ARGV[0],ARGV[1],ARGV[2])
puts kleer_bot.mostrarDatos()