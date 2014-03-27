def cambio(cantidad, tipo_monedas )
  solucion = []
  (0...tipo_monedas.size).each { |offset|
    tipo_cambio = []
    aux = cantidad
    tipo_monedas[offset...tipo_monedas.size].each { |aux2|
      until aux < aux2
        aux -= aux2
        tipo_cambio.push aux2
      end
    }
    solucion.push tipo_cambio
  }
  #min_by devuleve el elemtento  de menor longitud dentro el array solucion
  solucion.min_by {|aux3| aux3.length }
end
puts cambio(47,[25, 20, 1, 1] )
