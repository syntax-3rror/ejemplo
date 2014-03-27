module TextModule

	def TextModule.contar_palabras(string)
		string = string.gsub(/[^[[:word:]]\s]/, '').split(" ")
		return string.size
	end 
	def TextModule.contar_numeros(string)
		
	   string = string[/\d+/]
	   string = string.split("")
	  return string.length
	 #puts string
	end	
	def TextModule.numero_letras(string)
		string = string.gsub(/[^[[:word:]]\s]/, '')
		return string.length
	end
	def TextModule.numero_caracteres_especiales(string)
		string=string[/[^[[:word:]]\s]/]
		string = string.split("")
		puts string
	  return string.length
	end

end
class Articulo

	include TextModule
      require 'date'
     attr_accessor :texto, :likes,:comentarios,:usuario, :fecha

	 def initialize texto='', usuario = Usuario.new ('juan')
	 	@likes =[]
	 	@texto= texto
	 	@comentarios=[]
	 	@fecha = Date.new(2014,12,24)
	 end

	 def numero_palabras
		 return contar_palabras(@texto)
	 end

	 def aniadir_comentario(comentario)
		 comentarios.push comentario
	 end

	 def borrar_comentario(pos)
	 	comentarios.delete_at(pos)
	 	
	 end

	 def numero_comentarios

	 	return comentarios.size

	 end

	 def numero_numeros
	 	return contar_numeros(@texto)
	 end

	 def numero_letras
	  return contar_letras(@texto)
	 end 

	 def numero_caracteres_especiales
	 	return numero_caracteres_especiales(@texto)
	 end
	 def mostrar_articulo
	 	 usuario.mostrar_usuario
	 	puts  "articulo " + @texto + " comentarios "
	 	 comentarios.each do |comen|
	 	 	comen.mostrar_comentario
	 	 end	
	 end
	 def texto=(text)
		@texto=text
	 end
	 def cantidad_palabras
	 	 texto = texto.downcase.gsub(/[^[[:word:]]\s]/, '').split(" ") #cada palabra separada en array 
	 aux = texto.uniq
	 res= Hash.new # crear hash 
	 aux.each do |pal|
		res[pal]= pal
	    cont=0
		string.each do |pal2|
						if (pal2==pal)
							cont+=1
						end 
	 
					end
        res[pal] = cont #concatena el value 	
		end 
	  return  res
	 end 	
end 
articulo= Articulo.new 
articulo.texto='Thats this and thats that', 'epe'


puts articulo.cantidad_palabras