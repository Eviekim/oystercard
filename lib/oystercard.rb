class Oystercard

  MAXIMUM_BALANCE = 90

attr_reader :balance

 def initialize
    @balance = 0
 end

 def top_up(amount)
   fail 'Maximum balance exceeded' if amount + balance > MAXIMUM_BALANCE
    @balance += amount
 end

 def deduct(amount)
   @balance -= amount
 end

 def in_journey?
   false
 end

def touch_in
  in_journey = true
end

def touch_out
  in_journey = false
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
