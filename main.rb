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
myTicket = Ticket.new([23,12,42,2,24],[2,8])
myTicket.showTicket()

def addNumbers(times, maxNum)
  numbers = []

  until numbers.count == times
    randNum = rand(1...maxNum)

    if numbers.include? randNum
      break
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
  if (myTicket.mainNumbers.sort == ticket.mainNumbers.sort && myTicket.bonusNumbers.sort == ticket.bonusNumbers.sort)
    return true
  else 
    return false
  end
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





