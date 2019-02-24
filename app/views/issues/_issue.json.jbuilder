json.extract! issue, :id, :title, :description, :status, :category, :type, :project_id, :priority, :department, :isprivate, :assignedby_id, :openedby_id, :openeddate, :closedby_id, :closeddate, :deadline, :created_at, :updated_at
json.url issue_url(issue, format: :json)
