class Desafio1

    def initialize(cantidad,precio,estado)
        @cant = cantidad
        @precio = precio
        @estado = estado
    end
    
    def mostrarDatos()
        if(@cant.nil? || @precio.nil? || @estado.nil?)
            return "\n¡Ingresa todos los parámetros requeridos!"+ 
            "\n//ruby desafio1.rb <cantidad> <precio unitario> <estado>//"+
            "\n\n"
        else
            subTotal = @cant.to_f*@precio.to_f
            vat = 0
            desc = 0

            if(@estado.upcase == "UT")
                vat = 6.85
            elsif(@estado.upcase == "NV")
                vat = 8
            elsif(@estado.upcase == "TX")
                vat = 6.25
            elsif(@estado.upcase == "AL")
                vat = 4
            elsif(@estado.upcase == "CA")
                vat = 8.25
            else
                vat = "X"
            end

            if(vat == "X")
                return "¡#{@estado} no es un estado válido, ingresa UT, NV, TX, AL ó CA!"
            else

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

                descValue = desc*subTotal/100
                subTotal -= descValue
                vatValue = vat*subTotal/100
                total = subTotal+vatValue

                return "\nLa cantidad ingresada es: ##{@cant}"+
                "\nEl precio unitario ingresado es: $#{@precio}"+
                "\nEl estado ingresado es: #{@estado.upcase}"+
                "\n\nSubtotal: $#{subTotal}"+
                "\nDescuento(#{desc}%): $#{descValue}"+
                "\nVAT(#{vat}%): $#{vatValue}"+
                "\n\nTotal: $#{total}"+
                "\n\n"
            end
        end
    end
end

kleer_bot = Desafio1.new(ARGV[0],ARGV[1],ARGV[2])
puts kleer_bot.mostrarDatos()