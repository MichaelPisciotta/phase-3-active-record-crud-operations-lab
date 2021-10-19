class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        Movie.create(title: title)
      end

      def self.first_movie
        Movie.first
      end

      def self.last_movie
        Movie.last
      end

      def self.movie_count
        Movie.count
      end

      def self.find_movie_with_id(id)
        Movie.find_by(id: id)
      end



      
      
      def self.find_movie_with_attributes(title, release_date)
        Movie.find_by(title: title, release_date: release_date)
      end

      def self.find_movies_after_2002(release_date)
        Movie.find(release_date: release_date)
      end

      def update_with_attributes(title)
        Movie.instance.update(title: title)
      end

      def update_all_titles(title)
        Movie.update(title: title)
      end

      def delete_by_id(id)
        Movie.delete_by_id(id: id)
      end

      def delete_all_movies
        Movie.delete
        #Movie.count = 0
      end
end