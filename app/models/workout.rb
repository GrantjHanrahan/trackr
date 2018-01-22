class Workout < ApplicationRecord
   belongs_to :user, optional: true
   belongs_to :plan, optional: true


end
