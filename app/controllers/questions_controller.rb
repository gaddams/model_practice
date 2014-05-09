class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.

    # @most_recent_movie_for_second_actor = ???

    @most_recent_movie_for_second_actor = Actor.second.movies.order("year DESC").first.title

  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.

    @director_of_longest_movie = Movie.order("duration DESC").first.director.name

  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.

    movie_counts = {:director => "", :count => 0}

    Director.all.each do |the_director|

      if the_director.movies.count > movie_counts[:count]
        movie_counts = {:director => the_director.name, :count => the_director.movies.count}
      end
    end

    @director_with_the_most_movies = movie_counts[:director]
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.
    movie_counts = {:actor => "", :count => 0}

    Actor.all.each do |the_actor|

      if the_actor.movies.count > movie_counts[:count]
        movie_counts = {:actor => the_actor.name, :count => the_actor.movies.count}
      end
    end

    @actor_with_the_most_movies = movie_counts[:actor]
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.
    movie_counts = {:actor => "", :director => "", :count => 0}

    Actor.all.each do |the_actor|

      if the_actor.movies.count > movie_counts[:count]
        movie_counts = {:actor => the_actor.name, :count => the_actor.movies.count}
      end
    end

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
