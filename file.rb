class String
    def caeser_encrypt
        dict = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
        word_array = self.split(" ")
        return_string = word_array.map {|word|
            word.split("").map {|letter|
                if letter == letter.upcase
                    dict[dict.index(letter.downcase) - 3].upcase
                else
                    dict[dict.index(letter) - 3]
                end  
            }.join("")
        }.join(" ")
    end

    def caeser_decrypt
        dict = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
        word_array = self.split(" ")
        return_string = word_array.map {|word|
            word.split("").map {|letter|
                if letter == letter.upcase
                    dict[dict.index(letter.downcase) + 3].upcase
                else
                    dict[dict.index(letter) + 3]
                end  
            }.join("")
        }.join(" ")
    end
end