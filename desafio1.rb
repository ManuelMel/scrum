class Desafio1

    def initialize(cantidad,precio,estado)
        @cant = cantidad
        @precio = precio
        @estado = estado
    end
    
    def mostrarDatos()
        subTotal = @cant.to_f*@precio.to_f
        vat = 0

        if(@estado == "UT")
            vat = 6.85
        elsif(@estado == "NV")
            vat = 8
        elsif(@estado == "TX")
            vat = 6.25
        else
        
        end


        return "\nLa cantidad ingresada es: ##{@cant}"+
        "\nEl precio unitario ingresado es: $#{@precio}"+
        "\nEl estado ingresado es: #{@estado}"+
        "\n\nSubtotal: #{subTotal}"+
        "\nVAT(#{vat}%)"
    end

end

kleer_bot = Desafio1.new(ARGV[0],ARGV[1],ARGV[2])
puts kleer_bot.mostrarDatos()