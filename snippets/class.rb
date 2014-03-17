require 'asciidoctor' 

 class Person
   attr_accessor :first, :last, :weight, :height
 
   def initialize(params = {})
     @first = params[:first]
     @last = params[:last]
     @weight = params[:weight]
     @height = params[:height]   
   end
  
   def has_more_lines?
   end
 end
 
 p = Person.new(
   height: 170cm,
   weight: 72,
   last: 'Doe',
   first: 'John'
 )
