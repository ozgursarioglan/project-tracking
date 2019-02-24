require 'test_helper'

class IssuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get issues_url
    assert_response :success
  end

  test "should get new" do
    get new_issue_url
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post issues_url, params: { issue: { assignedby_id: @issue.assignedby_id, category: @issue.category, closedby_id: @issue.closedby_id, closeddate: @issue.closeddate, deadline: @issue.deadline, department: @issue.department, description: @issue.description, isprivate: @issue.isprivate, openedby_id: @issue.openedby_id, openeddate: @issue.openeddate, priority: @issue.priority, project_id: @issue.project_id, status: @issue.status, title: @issue.title, type: @issue.type } }
    end

    assert_redirected_to issue_url(Issue.last)
  end

  test "should show issue" do
    get issue_url(@issue)
    assert_response :success
  end

  test "should get edit" do
    get edit_issue_url(@issue)
    assert_response :success
  end

  test "should update issue" do
    patch issue_url(@issue), params: { issue: { assignedby_id: @issue.assignedby_id, category: @issue.category, closedby_id: @issue.closedby_id, closeddate: @issue.closeddate, deadline: @issue.deadline, department: @issue.department, description: @issue.description, isprivate: @issue.isprivate, openedby_id: @issue.openedby_id, openeddate: @issue.openeddate, priority: @issue.priority, project_id: @issue.project_id, status: @issue.status, title: @issue.title, type: @issue.type } }
    assert_redirected_to issue_url(@issue)
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete issue_url(@issue)
    end

    assert_redirected_to issues_url
  end
end
