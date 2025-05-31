class Task < ApplicationRecord
  belongs_to :guide
  belongs_to :seeker
end
