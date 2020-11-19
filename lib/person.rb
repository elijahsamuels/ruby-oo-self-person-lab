

class Person

    attr_accessor :bank_account



    def initialize(name)

        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        

    end

    def name
        @name
    end

    
    def happiness
        @happiness
    end

    def happiness=(happiness)
        @happiness = happiness.clamp(0, 10)
    end

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
         @hygiene = hygiene.clamp(0, 10)
    end

    # def hygiene=(num)
    #     @hygiene = num
    #     if @hygiene >= 10
    #       @hygiene = 10
    #     elsif @hygiene <= 0
    #       @hygiene = 0
    #     end
    #   end
    

    def happy?
        @happiness >7 ? true : false
    end

    def hygiene?
        @hygiene >7 ? true : false
    end

    def clean?
        @hygiene >7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = (self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


    def work_out
        self.hygiene = (self.hygiene - 3)
        self.happiness = (self.happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (self.happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic === "politics"
            self.happiness = (self.happiness - 2)
            friend.happiness = (friend.happiness - 2)
            "blah blah partisan blah lobbyist"
            
        elsif topic === "weather"
            self.happiness = (self.happiness + 1)
            friend.happiness = (friend.happiness + 1)
            "blah blah sun blah rain"
        else
            topic == "other"
            "blah blah blah blah blah"
        end
    end







end
