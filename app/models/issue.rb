class Issue < ApplicationRecord

  belongs_to :project, foreign_key: :project_id, optional: true


  belongs_to :user_assigner, foreign_key: :assignedby_id, optional: true, class_name: 'User'

  belongs_to :creator, foreign_key: :openedby_id, optional: true, class_name: 'User'

  belongs_to :closer, foreign_key: :closedby_id, optional: true, class_name: 'User'
  

end
