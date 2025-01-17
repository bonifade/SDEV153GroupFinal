require "application_system_test_case"

class CoursesTest < ApplicationSystemTestCase
  setup do
    @course = courses(:one)
  end

  test "visiting the index" do
    visit courses_url
    assert_selector "h1", text: "Courses"
  end

  test "creating a Course" do
    visit courses_url
    click_on "New Course"

    fill_in "Course cred", with: @course.course_cred
    fill_in "Course desc", with: @course.course_desc
    fill_in "Course name", with: @course.course_name
    fill_in "Course prof", with: @course.course_prof_id
    fill_in "Course subj", with: @course.course_subj
    click_on "Create Course"

    assert_text "Course was successfully created"
    click_on "Back"
  end

  test "updating a Course" do
    visit courses_url
    click_on "Edit", match: :first

    fill_in "Course cred", with: @course.course_cred
    fill_in "Course desc", with: @course.course_desc
    fill_in "Course name", with: @course.course_name
    fill_in "Course prof", with: @course.course_prof_id
    fill_in "Course subj", with: @course.course_subj
    click_on "Update Course"

    assert_text "Course was successfully updated"
    click_on "Back"
  end

  test "destroying a Course" do
    visit courses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Course was successfully destroyed"
  end
end
