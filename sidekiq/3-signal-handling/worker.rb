require 'sidekiq'

class OurWorker
  include Sidekiq::Worker

  def perform(work)
    case work
    when "super_hard"
      puts "Charging credit card"
      sleep 20
      puts "Doing some hard work here"
    when "hard"
      sleep 10
      puts "Bear with me"
    else
      while true do
        sleep 1
        puts "Endless loop"
      end
      sleep 1
      puts "Easy peazy"
    end
  end

end
