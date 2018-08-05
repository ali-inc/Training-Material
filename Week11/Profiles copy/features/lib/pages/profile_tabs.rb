class ProfileTabs
  include Capybara::DSL

  def visit_projects
    click_link 'header-projects'
  end

  def enter_title title
    fill_in 'title', with: title
  end

  def enter_description desc
    fill_in 'description', with: desc
  end

  def fill_in_heading heading
    fill_in 'heading', with: heading
  end

  def fill_in_body body
    fill_in 'body', with: body
  end

  def save
    click_on 'save-button'
  end

  def visit_custom_sections
    click_link('header-custom-sections')
  end

  def sucessful_custom_creation
    return page.has_content?('Custom was successfully created.')
  end

  def click_title
    find(:xpath, "/html/body/div/div[2]/table/tbody/tr[1]/td[1]/a").click

  end
  def check_if_saved
    page.has_content?('successfully created')
  end

  def check_if_destroyed
    page.has_content?('successfully destroyed')
  end

  def check_if_updated
    page.has_content?('successfully updated')
  end

  def visit_employment
    click_link 'header-employment'
  end

  def fill_in_company comp
    fill_in 'company', with: comp
  end

  def fill_in_role role
    fill_in 'role', with: role
  end

  def fill_in_start_date date
    fill_in 'start-date', with: date
  end

  def fill_in_end_date date
    fill_in 'end-date', with: date
  end

  def visit_education
    click_link 'header-education'
  end

  def visit_certifications
    click_link 'header-certifications'
  end

  def visit_custom_sections
    click_link 'header-custom-sections'
  end

  def fill_in_institution name
    fill_in 'institution', with: name
  end

  def fill_in_course course
    fill_in 'course', with: course
  end

  def select_title title_num
    click_link("title-#{title_num}")
  end


end
