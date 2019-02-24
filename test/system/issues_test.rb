require "application_system_test_case"

class IssuesTest < ApplicationSystemTestCase
  setup do
    @issue = issues(:one)
  end

  test "visiting the index" do
    visit issues_url
    assert_selector "h1", text: "Issues"
  end

  test "creating a Issue" do
    visit issues_url
    click_on "New Issue"

    fill_in "Assignedby", with: @issue.assignedby_id
    fill_in "Category", with: @issue.category
    fill_in "Closedby", with: @issue.closedby_id
    fill_in "Closeddate", with: @issue.closeddate
    fill_in "Deadline", with: @issue.deadline
    fill_in "Department", with: @issue.department
    fill_in "Description", with: @issue.description
    fill_in "Isprivate", with: @issue.isprivate
    fill_in "Openedby", with: @issue.openedby_id
    fill_in "Openeddate", with: @issue.openeddate
    fill_in "Priority", with: @issue.priority
    fill_in "Project", with: @issue.project_id
    fill_in "Status", with: @issue.status
    fill_in "Title", with: @issue.title
    fill_in "Type", with: @issue.type
    click_on "Create Issue"

    assert_text "Issue was successfully created"
    click_on "Back"
  end

  test "updating a Issue" do
    visit issues_url
    click_on "Edit", match: :first

    fill_in "Assignedby", with: @issue.assignedby_id
    fill_in "Category", with: @issue.category
    fill_in "Closedby", with: @issue.closedby_id
    fill_in "Closeddate", with: @issue.closeddate
    fill_in "Deadline", with: @issue.deadline
    fill_in "Department", with: @issue.department
    fill_in "Description", with: @issue.description
    fill_in "Isprivate", with: @issue.isprivate
    fill_in "Openedby", with: @issue.openedby_id
    fill_in "Openeddate", with: @issue.openeddate
    fill_in "Priority", with: @issue.priority
    fill_in "Project", with: @issue.project_id
    fill_in "Status", with: @issue.status
    fill_in "Title", with: @issue.title
    fill_in "Type", with: @issue.type
    click_on "Update Issue"

    assert_text "Issue was successfully updated"
    click_on "Back"
  end

  test "destroying a Issue" do
    visit issues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issue was successfully destroyed"
  end
end
