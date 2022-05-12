class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #actorsList = []
        self.actors[0].full_name
        #do |t|
            #actorsList << t.full_name
        #end
        #actorsList
    end
end