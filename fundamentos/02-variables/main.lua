-- Esto es un comentario... y para comentarios en bloques:
--
--[[
Esto es un comentario en bloque
Como pueden ver
Abarco varias lineas....
]]

-- Variables en LUA
-- POR ALCANCE

-- GLOBALES, estas no usan local para declararse.
-- Se pueden acceder desde cualquier instancia del programa, incluso funciones.
-- No se recomienda abusar de estas.
nombre = "Sergio"

-- LOCALES
-- Estas existen solo dentro del bloque, función o archivo.
-- Se deben declarar con la palabra reservada local + nombrevariable = valor
local apellido = "Muñoz"

-- CAMPOS DE TABLA
-- Estas solo existen o viven dentro de tablas LUA
local datos = { name = "Alexander", lastname = "Rojas" }

-- Su comprensión es de suma importancia ya que es el estandar y fuerte del a industria en la programación con LUA
print("Estoy imprimiendo la variable nombre que vive dentro de la tabla datos:  ", datos.name)

function imprimirvariableglobal()
	print("Estoy imprimiendo la variable global de nombre dentro de una funcion:... ", nombre)
end

imprimirvariableglobal()

print(
	"Estoy imprimiendo apellido, la cual solo existe en el contexto del archivo o bloque de código, esta no puede usarse en funciones por ejemplo si no se declara dentro de la misma por ejemplo.... ",
	apellido
)

-- Tipos de variables soportado en LUA
-- CADENA DE TEXTO

local someTextVariable = "Soy un texto"
local someMultipleTextVariable = [[
  soy un texto
  dividio en varias
  partes
]]

local someNumberVariable = 4

local someDecimalVariable = 3.50

local nilVariable = nil

local someBooleanVariable = false
local someBooleanVariableTrueCase = true

local someTableVariable = {
	atributeOne = "some value in text",
	atributeTwo = 28,
	[1] = "some element like a index, i work like a dicctionary, array",
}

local function someFunctionVariable()
	print("Hello from variable with funcion")
end

-- PENDIENTE DE MOSTRAR EJEMPLO DE HILO Y USERDATA
--
