class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.save.where(title: title)
      end

end