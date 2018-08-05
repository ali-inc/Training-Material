class BBCAccountsPage
  include Capybara::DSL

  USERNAME_FIELD = 'user-identifier-input'
  PASSWORD_FIELD = 'password-input'
  ERROR_INCLUDE_LETTER = "Sorry, that password isn't valid. Please include a letter."
  ERROR_TOO_SHORT = "Sorry, that password is too short. It needs to be eight characters or more."
  ERROR_EASY_TO_GUESS = "Sorry, that password isn't valid. Make sure it's hard to guess."
  ERROR_INCLUDE_OTHER_THAN_LETTER = "Sorry, that password isn't valid. Please include something that isn't a letter."
  ERROR_MISSING = "Something's missing. Please check and try again."
  ERROR_INCORRECT = "Uh oh, that password doesn’t match that account. Please try again."

  def input_username name
    fill_in USERNAME_FIELD, with: name
  end

  def input_password name
    fill_in PASSWORD_FIELD, with: name
  end

  def click_sing_in_button
    click_button 'submit-button'
  end

  def click_on_page
    click_on 'Email or username'
  end

  def password_field
    find_field('Password')
  end

  def error_too_short
    page.has_content? ERROR_TOO_SHORT
  end

  def error_include_letter
    page.has_content? ERROR_INCLUDE_LETTER
  end

  def error_easy_to_guess
    page.has_content? ERROR_EASY_TO_GUESS
  end

  def error_include_other_than_letter
    page.has_content? ERROR_INCLUDE_OTHER_THAN_LETTER
  end

  def error_missing
    page.has_content? ERROR_MISSING
  end

  def error_incorrect
    page.has_content? ERROR_INCORRECT
  end

  def click_register
    click_link("Register now")
  end

  def over_13
    click_link("13 or over")
  end

  def enter_dob d, m, y
      fill_in('Day', with: d)
      fill_in('Month', with: m)
      fill_in('Year', with: y)
      click_button('Continue')
  end

  def check_error_message
    # find(:css, 'p.form_message__text').text
    find(:id, 'form-message-password').text
  end

end
