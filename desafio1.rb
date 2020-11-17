class Desafio1

    def initialize(cantidad,precio,estado)
        @cant = cantidad
        @precio = precio
        @estado = estado
    end
    
    def mostrarDatos()
        subTotal = @cant.to_f*@precio.to_f
        vat = 0
        desc = 0

        if(@estado == "UT")
            vat = 6.85
        elsif(@estado == "NV")
            vat = 8
        elsif(@estado == "TX")
            vat = 6.25
        elsif(@estado == "AL")
            vat = 4
        elsif(@estado == "CA")
            vat = 8.25
        end

        if(subTotal>1000.0 && subTotal<= 5000.0)
            desc = 3
        elsif(subTotal>5000.0 && subTotal<= 7000.0)
            desc = 5
        elsif(subTotal>7000.0 && subTotal<= 10000.0)
            desc = 7
        elsif(subTotal>10000.0 && subTotal<= 50000.0)
            desc = 10
        elsif(subTotal>50000.0)
            desc = 15
        end

        vatValue = vat*subTotal/100
        descValue = desc*subTotal/100
        total = subTotal+vatValue


        return "\nLa cantidad ingresada es: ##{@cant}"+
        "\nEl precio unitario ingresado es: $#{@precio}"+
        "\nEl estado ingresado es: #{@estado}"+
        "\n\nSubtotal: $#{subTotal}"+
        "\nVAT(#{vat}%): $#{vatValue}"+
        "\nDescuento(#{desc}%): $#{descValue}"+
        "\n\nTotal: $#{total}"+
        "\n\n"
    end

end

kleer_bot = Desafio1.new(ARGV[0],ARGV[1],ARGV[2])
puts kleer_bot.mostrarDatos()