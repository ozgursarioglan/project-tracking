class Project < ApplicationRecord
  belongs_to :user, foreign_key: :manager_id, optional: true
end
