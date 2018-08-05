class ProfileAdmin

  $APPROVE_PENDING = "✔"
  $REJECT_PENDING = "✘"
  $PENDING = "pending"
  $APPROVED = "approved"
  $REJECTED_PROFILE = "Profile was rejected"
  $APPROVED_PROFILE = "Profile was successfully approved"
  $SHARE_PROFILE = "Share"
  $COPY_LINK = "copylink"
  $LOGOUT = 'logout-button'
  $TOKEN_LINK = 'tokenlink'
  $SECTIONS_HEADER = "header-sections"
  $NEW_BUTTON = 'new-button'
  $TITLE = 'title'
  $DESCRIPTION = 'description'
  $SKILLS = 'skills'
  $SAVE = 'save-button'
  $CANCEL = 'Cancel'
  $CREATED_SECTION = "Section was successfully created"
  $DESTROYED_SECTION = "Section was successfully destroyed"
  $UPDATED_SECTION = "Section was successfully updated"
  $CONFIRM = 'Confirm'
  $DELETE_SECTION = 'Destroy'
  $EDIT = "Edit"

  include Capybara::DSL

  def approve_pending
    click_on($APPROVE_PENDING, match: :first)
  end

  def reject_pending
    find_by_id('pending').click_on($REJECT_PENDING, match: :first)
  end

  def reject_approved
    find_by_id('approved').click_on($REJECT_PENDING, match: :first)
  end

  def rejected_profile?
    page.has_content?($REJECTED_PROFILE)
  end

  def approved_profile?
    page.has_content?($APPROVED_PROFILE)
  end

  def share_profile
    click_on($SHARE_PROFILE, match: :first)
  end

  def copy_link
    click_link($COPY_LINK)
  end

  def admin_signed_in
    find_link($LOGOUT).visible?
  end

  def visit_share_link
    $token_link = find_by_id($TOKEN_LINK).text
    visit($token_link)
  end

  def share_page
    return $token_link
  end

  def visit_sections
    sleep 2
    click_link($SECTIONS_HEADER)
  end

  def create_new_section
    click_link($NEW_BUTTON)
  end

  def enter_skills skills
    fill_in($SKILLS, with: skills)
  end

  def enter_title title
    fill_in($TITLE, with: title)
  end

  def enter_description description
    fill_in($DESCRIPTION, with: description)
  end

  def save
    click_button($SAVE)
  end

  def created_section?
    page.has_content?($CREATED_SECTION)
  end

  def destroy_section
    $section_count = all("tr[id^='section_']").count
    click_on($DELETE_SECTION, match: :first)
  end

  def not_deleted?
    count = all("tr[id^='section_']").count
    count == $section_count
  end

  def cancel_delete
    click_button($CANCEL)
  end

  def confirm_delete
    click_on($CONFIRM)
  end

  def destroyed_section?
    # page.has_content?($DESTROYED_SECTION)
    count = all("tr[id^='section_']").count
    count == $section_count - 1
  end

  def click_edit
    click_on($EDIT, match: :first)
  end

  def section_updated?
    page.has_content?($UPDATED_SECTION)
  end

end
