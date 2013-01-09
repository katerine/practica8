class Fraccionario

attr_reader :num,:den

include Comparable
include Enumerable


#-------------------------------------------------------------------------------
def mcd(a,b)
d = a.abs, b.abs
while d.min != 0
d = d.min, d.max%d.min
end
d.max
end
private :mcd


def initialize(num, den)
max = mcd(num, den)
@num = (num / max).to_i
@den = (den / max).to_i
end

#construccion
def Fraccionario.construccion(numero)
num = numero*1000
den = 1000
new(num, den)
end


#-------------------------------------------------------------------------------
#Impresion por pantalla
def imprimirFraccion
"#{@num}/#{@den}"
end

def imprimirFlotante
      @num.to_f/@den.to_f
end


