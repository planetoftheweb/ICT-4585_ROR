class Album < ActiveRecord::Base
    belongs_to :label
    has_and_belongs_to_many :artist
end
