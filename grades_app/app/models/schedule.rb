class Schedule < ApplicationRecord
    belongs_to :user

    attr_accessor :total_points

    def total_points
    end

    
end
