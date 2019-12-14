require 'pry'

class Triangle

attr_accessor :a, :b, :c

def initialize(a, b, c)
  @a=a
  @b=b
  @c=c
end

def kind(a,b,c)
  triangle=@a+@c>=@b && @b+@c>=@a && @a+@b>=@c && @a>0 && @b>0 && @c>0
  if triangle==true && @a==@b && @b==@c && @c==@a
    :equilateral
    binding.pry
  elsif triangle==true && @b==@c && @a!=@b && @a!=@c
    :scalene
  elsif @triangle==true && @a==@c && @b!=@c && @b!=@a
    :scalene
  elsif triangle==true && @a==b && @b!=@c && @a!=@c
    :scalene
  elsif triangle==true && @a!=@b && @a!=@c && @c!=@b
    :isosceles
  else triangle==false
    :invalid
  end
end

  class TriangleError<StandardError

  end

end



#def kind(a,b,c)
#triangle=a+c>=b && b+c>=a && a+b>=c
#if triangle && a==b && b==c && c==a
#  "equilateral"
#elsif triangle && a!=b && b==c || a==c
#  "scalene"
#elsif triangle && a!=c && a==b || b==c
#  "scalene"
#elsif triangle && b!=c && a==b && a==c
#  "scalene"
#elsif triangle && a!=b && a==c && c==b
#  "isosceles"
#end

#kind(4,15,3)
#kind(4,4,4)
#kind(4,5,6)

#a=2
#b=1
#c=3

#triangle=a+c>=b && b+c>=a && a+b>=c && a>0 && b>0 && c>0
#if triangle==false
#  :invalid
#elsif triangle==true && a==b && b==c && c==a
#  :equilateral
#elsif triangle==true && a!=b && a!=c && c!=b
#  :isosceles
#end

#a=3
#b=3
#c=4

#def kind(a,b,c)
#  triangle=a+c>=b && b+c>=a && a+b>=c && a>0 && b>0 && c>0
#  if triangle==true && a==b && b==c && c==a
#    :equilateral
#  elsif triangle==true && b==c && a!=b && a!=c
#    :scalene
#  elsif triangle==true && a==c && b!=c && b!=a
#    :scalene
#  elsif triangle==true && a==b && b!=c && a!=c
#    :scalene
#  elsif triangle==true && a!=b && a!=c && c!=b
#    :isosceles
#  else triangle==false
#    :invalid
#  end
#end

#kind(1,1,1)
#kind(1,1,2)
#kind(1,2,1)
#kind(2,1,1)
#kind(1,2,3)
#kind(1,10,1)
#kind(-1,1,1)
