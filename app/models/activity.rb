class Activity < ApplicationRecord
  belongs_to :workout

  enum activity_type: [:run, :walk, :swim, :hiit, :strength, :cycle, :team, :water_sports, :hiking]

  # geocoded_by :location
  # after_validation :geocode

end
