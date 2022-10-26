class Author < ApplicationRecord
    def name
        return first_name + " " + last_name 
    end

    validates :last_name, presence: true
end
