require 'oystercard'


#oystercard = Oystercard.new
#money = Money.new
#oystercard.topup(money)

describe Oystercard do
  #In order to use public transport
  #As a customer
  #I want money on my card
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  #expect (subject.balabce).to be_a(Float)


  describe '#top_up' do
    #In order to keep using public transport
    #As a customer
    #I want to add money to my card
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'can top up the balance' do
      expect{ subject.top_up 1 }.to change { subject.balance }.by 1
    end

    it 'raises an error if the maximum balance is exceeded' do
      maximum_balance = Oystercard::MAXIMUM_BALANCE
      subject.top_up(maximum_balance)
      expect{ subject.top_up 1 }.to raise_error 'Maximum balance exceeded'

     end
   end

  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }

    it 'deducts an amount from the balance' do
      subject.top_up(20)
      expect{ subject.deduct 3}.to change{ subject.balance }.by -3
    end
  end


 end

#describe "something" do
  #it "does something" do
    #expect(somehitn).to eq/change...(something)
  #end
#end
