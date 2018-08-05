class ProfileUser
  include Capybara::DSL

  def visit_login
    visit('/')
  end

  def input_username username
    fill_in('email', with: username)
  end

  def input_password pass
    fill_in('password', with: pass)
  end

  def click_submit
    click_on('submit')
  end

  def login_error
    find('p.notice').text
    # find("p.notice").native.attribute("type")
  end

  def click_profile
    click_on('profile-index-stream-5')
  end

  def check_login
    page.has_content?('Welcome')
  end

  def click_create_a_profile
    click_on('new-button')
  end

  def click_edit
    click_on('edit-button5')
  end

  def input_profile_summary summary
    fill_in('profile-form-summary', with: summary)
  end

  def input_profile_degree degree
    fill_in('profile-form-degree', with: degree)
  end

  def select_stream
    page.select 'SDET', from: 'profile_stream'
  end

  def select_profile_sections num
    num.times do |i|
      if i != 0
        find("input[id='profile_section_ids_#{i}']").click
        # find("input[id='profile_project_ids_#{i*8}']").click
        # find("input[id='profile_employment_ids_#{i*8}']").click
        # find("input[id='profile_education_ids_#{i*8}']").click
        # find("input[id='profile_certification_ids_#{i*8}']").click
      end
    end
  end

  def select_profile_status status
    find("input[id='profile_status_#{status}']").click
  end

  def click_save
    click_on("save-button")
  end

  def profile_created
    page.has_content?("*Profile was successfully created.")
  end

  def profile_saved_message
    find('p.notice').text
  end

  def click_download
    click_on('Download', match: :first)
  end

  def click_destroy
    click_on('Destroy', match: :first)
  end

  def confirm_delete
    click_on('Confirm')
    find('p.notice').text
  end

  def profile_error error
    page.has_content?(error)
  end

  def find_footer
    page.has_text?('© Sparta Global 2018')
  end
end
