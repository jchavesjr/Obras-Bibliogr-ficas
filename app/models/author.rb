class Author < ApplicationRecord

    def verify_number_names(number_words, name)
        names = name.split
        if number_words.to_i == names.size
            true
        else
            false
        end
    end

    def filter_size_names(number_words, name)
        if number_words.to_i == 1
            format_with_one_name(name)
        elsif number_words.to_i == 2
            format_with_two_names(name)
        else
            format_greater_two_names(name)
        end
    end

    def format_with_one_name(name)
            new_format = "#{name.upcase}"
            self.name = new_format
            self.save
            new_format
    end

    def format_with_two_names(name)
            names = name.split
            new_format = "#{names[1].upcase}, #{names[0].capitalize}"
            self.name = new_format
            self.save
            new_format
    end


    def format_greater_two_names(name)
        names = name.split
        last_name = names.last
        if last_name.upcase == "FILHO" || last_name.upcase == "FILHA" || last_name.upcase =="NETO" ||
            last_name.upcase == "NETA" || last_name.upcase == "SOBRINHO" || last_name.upcase == "SOBRINHA" || last_name.upcase == "JUNIOR"
                if names[1].downcase == "da" || names[1].downcase == "de" || names[1].downcase == "do" || names[1].downcase == "das" || names[1].downcase == "dos"
                    new_format = "#{names[-2].upcase} #{names[-1].upcase}, #{names[0].capitalize} #{names[1].downcase}"
                    return self.name = new_format
                    self.save
                    new_format
                else
                    new_format = "#{names[-2].upcase} #{names[-1].upcase}, #{names[0].capitalize}"
                    return self.name = new_format
                    self.save
                    new_format
                end
        elsif names[1].downcase == "da" || names[1].downcase == "de" || names[1].downcase == "do" || names[1].downcase == "das" || names[1].downcase == "dos"
            new_format = "#{names[-1].upcase}, #{names[0].capitalize} #{names[1].downcase}"
            self.name = new_format
            self.save
            new_format
        else
            new_format = "#{names[-1].upcase}, #{names[0].capitalize}"
            self.name = new_format
            self.save
            new_format
        end
    end

end
