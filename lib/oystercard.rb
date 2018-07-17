class Oystercard

attr_reader :balance

 def initialize
    @balance = 0
 end

 def top_up(amount)
   @balance = @balance + amount 
 end
end

#class Money
#end

#def topup(money)

#end

#class Oystercard
  #attr_reader :balance

  #def initialize
    #@balance = 0.to_f
  #end
#´end
