class Actor_director < ActiveRecord::Base

has many :movies
belongs to :actor
belongs to  :director
