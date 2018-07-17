require 'oystercard'
#In order to use public transport
#As a customer
#I want money on my card

#oystercard = Oystercard.new
#money = Money.new
#oystercard.topup(money)

describe Oystercard do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end
end
  #expect (subject.balabce).to be_a(Float)

  #In order to keep using public transport
  #As a customer
  #I want to add money to my card
  describe '#top_up' do
    it 'responds to top up with one arg' do
      expect(subject.balance).to(:top_up).with(1).argument
 end
end
    it 'can top up the balance' do
      expect{ subject.top_up 1 }.to change{ subject.balance }.by 1
    end
