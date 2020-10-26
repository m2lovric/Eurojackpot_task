class Ticket
  def initialize(mainNumbers, bonusNumbers)
    @mainNumbers = mainNumbers
    @bonusNumbers = bonusNumbers
  end

  def mainNumbers
    return @mainNumbers
  end

  def bonusNumbers
    return @bonusNumbers
  end

  def showTicket
    puts "Main numbers #{@mainNumbers.sort!}"
    puts "Bonus numbers #{@bonusNumbers.sort!}"
  end
end

puts "My ticket"
myTicket = Ticket.new([2,15,22,23,32],[3,7])
myTicket.showTicket()

def addNumbers(times, maxNum)
  numbers = []

  until numbers.count == times
    randNum = rand(1...maxNum)

    if numbers.include? randNum
      nil
    else
      numbers << randNum
    end
  end

  return numbers
end

def newTicket
  mainNumbers = addNumbers(5, 50)
  bonusNumbers = addNumbers(2, 10)

  return Ticket.new(mainNumbers, bonusNumbers)
end

def checkNums(myTicket, ticket)
  myTicket.mainNumbers.sort == ticket.mainNumbers.sort && myTicket.bonusNumbers.sort == ticket.bonusNumbers.sort
end

def getEurojackpot(myTicket)
  week = 0
  loop do
    ticket = newTicket
    ticket.showTicket
    aresame = checkNums(myTicket, ticket)
    week += 1
    puts week

    if aresame == true
      puts "Eurojackpot"
      break
    end
  end
end

getEurojackpot(myTicket)





