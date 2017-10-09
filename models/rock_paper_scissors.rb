class Game

    def play(option1, option2)
        @p1 = "Player 1 wins!"
        @p2 = "Player 2 wins!"
        @draw = "A draw."
        @invalid = "Invalid options used."
        if option1.to_s != "rock" && option1.to_s != "paper" && option1.to_s != "scissors"
            return @invalid
        end
        if option2.to_s != "rock" && option2.to_s != "paper" && option2.to_s != "scissors"
            return @invalid
        end
        if option1.to_s == "rock"
            if option2.to_s == "rock"
                return @draw
            elsif option2.to_s == "paper"
                return @p2
            else
                return @p1
            end
        end
        if option1.to_s == "paper"
            if option2.to_s == "rock"
                return @p1
            elsif option2.to_s == "paper"
                return @draw
            else
                return @p2
            end
        else
            if option2.to_s == "rock"
                return @p2
            elsif option2.to_s == "paper"
                return @p1
            else
                return @draw
            end
        end
    end
end
"rock" > "scissors"
"scissors" > "paper"
"paper" > "rock"
