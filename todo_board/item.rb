class Item

    def self.valid_date?(date)
        parts = date.split("-")

        (0...parts.length).each do |i|
            ele = parts[i].to_i
            if i == 0 
                return false if parts[i].length != 4
            elsif 
                i == 1
                return false if (ele < 0) || (ele > 12)
            else 
                i == 2
                return false if (ele < 0) || (ele > 31)
            end
        end
        true
    end

    attr_accessor :title, :deadline, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description

        if !Item.valid_date?(@deadline)
            raise "Error: Invalid date. Use YYYY-MM-DD format."
        end
    end

    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline 
        else
            raise "Error: Invalid date. Use YYYY-MM-DD format."
        end
    end

end