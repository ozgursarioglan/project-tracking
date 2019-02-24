class Issue < ApplicationRecord
  belongs_to :project
  belongs_to :assignedby
  belongs_to :openedby
  belongs_to :closedby
end
