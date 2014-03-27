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

	 def initialize  (starting_text=" ",default_user=Usuario.new("juan"))
	 	@likes =[]
	 	@texto= texto
	 	@comentarios=[]
	 	@fecha = Date.new(2014,12,24)
	 	 @usuario=usuario
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

	 
	 def es_usuario_igual (usu)
		return usuario==usu ? true : false
	end	

	def es_fecha_mayor_igual(fec)
		return fecha >= fec ? true : false
	end	

	def es_fecha_menor_igual(fec)
		return fecha <= fec ? true : false
	end

	def cantidad_comentarios_usuario(usua,fecha_inicio,fecha_fin )
		
		cant_comentarios=0
		cant_likes=0
		comentarios.each do |art|
			if ((art.es_usuario_igual(usua) )&& ( art.es_fecha_mayor_igual (fecha_inicio )) && (art.es_fecha_menor_igual (fecha_fin)))
				cant_comentarios+=1
				
			end

		end
		return cant_comentarios
	end 

end 


class Comentario

	include TextModule 
	 require 'date'
	attr_accessor :texto, :likes,:usuario,:fecha
	def initizize(starting_text=" ",default_user=Usuario.new("juan"))
		 @likes=[]
		@texto=texto
		@fecha = Date.new(2014,12,24)
	end

	def numero_palabras
		return contar_palabras(@texto)
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
	 
	def mostrar_comentario
		usuario.mostrar_usuario
		puts " comentario " + @texto + "\n" + "likes \n" + "cantidad de likes " + likes.length

		likes.each do |like|
			like.mostrar_like
		end	
	end  
	def es_usuario_igual (usu)
		return usuario==usu ? true : false
	end
	def es_fecha_mayor_igual(fec)
		return fecha >= fec ? true : false
	end	
	def es_fecha_menor_igual(fec)
		return fecha <= fec ? true : false
	end	
end


class SitioWeb

	attr_accessor:url,:nombre
	def mostrar_nombreWeb
		puts nombre
	end
end 

class Blog < SitioWeb 

	attr_accessor  :articulos,:numero_palabras,:numero_letras,:numero_caracteres_especiales,:usuario

	def initialize ( usuario = Usuario.new('juan' ))

		@articulos =[]
		@numero_letras=0
		@numero_caracteres_especiales=0
		@numero_palabras=0
		@cantidad_numeros=0
	
	end	
	def numero_articulos
		return articulos.size
	end

	def numero_comentarios(articulo)
		return articulo.numero_comentarios
		
	end	

	def numero_likes(articulo)
		return 	articulo.likes

	end	

	
	def anadir_articulo(articulo)
		articulos << articulo
	end 
	def borrar_articulo(pos)
		articulos.delete_at(pos)	
	end	
	
	def numero_letras

		articulos.each do |art|
			numero_letras+= art.contar_letras
		end
		return numero_letras
	end
	def numero_numeros
		articulos.each do |art|
			 @cantidad_numeros+=art.contar_numeros
		end
		return cantidad_numeros
	end
	def numero_caracteres_especiales
		articulos.each do |art|
			@numero_caracteres_especiales+=art.numero_caracteres_especiales
		end	
		return @numero_caracteres_especiales	
	end	
	def mostrar_articulos
		articulos.each do |art|
			art.mostrar_articulo
		end
	end	
	
end	

class Usuario
	attr_accessor :nombre
	def initialize (nombre)
		@nombre=nombre
	
	end
	def mostrar_usuario
		puts "nombre " + @nombre 
	end	
end
class Like 
	attr_accessor  :usuario,:fecha,:like
	 require 'date'

	def initialize(usuario = Usuario.new('juan' ))
		@usuario=usuario
		@fecha = Date.new(2014,12,24)
		@like=1

	end	
	def mostrar_like
		puts @usuario + "fecha " + @fecha + @like
	end	
	def es_usuario_igual (usu)
		return usuario==usu ? true : false
	end
	def es_fecha_mayor_igual(fec)
		return fecha >= fec ? true : false
	end	
	def es_fecha_menor_igual(fec)
		return fecha <= fec ? true : false
	end	
end
