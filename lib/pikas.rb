class Pikas

    def GenerarNumero(nivel)
        result = rand(10**nivel).to_s
        while (result.length < nivel) 
            result = rand(10**nivel).to_s
        end
        return result
    end

end
