
=begin
numero1 = 0
numero2 = 0
total = 0

puts 'informe o numero 1:'
numero1 = gets.chomp.to_i

puts 'informe o numero 2:'
numero2 = gets.chomp.to_i

total = numero1 + numero2
total = numero1 - numero2
total = numero1 * numero2
total = numero1 / numero2
puts total
=end

# -- Operadores de comparação --
# diferente de !=
# maior que >
# menor que <
# menor ou igual >=
# maior ou igual <=
# igual a ==
# igual a eql?

=begin
=	Operador de atribuição simples, atribui valores da direita para o lado esquerdo	c = a + b é atribuido o valor da soma de a + b em c	
+=	Adiciona e faz a atribuição	                                                    c += a é equivalente a c = c + a	
-=	Subtrai e faz a atribuição	                                                    c -= a é equivalente a c = c - a	
*=	Multiplica e faz a atribuição	                                                c *= a é equivalente a c = c * a	
/=	Divide e faz a atribuição	                                                    c /= a é equivalente a c = c / a	
%=	Divide e faz a atribuição do resto	                                            c %= a é equivalente a c = c % a	
**=	Exponencia e faz a atribuição	                                                c **= a é equivalente a c = c ** a	
=end

v1 = 11
v2 = 11

puts v1.eql?(v2)
puts v1 >= v2

