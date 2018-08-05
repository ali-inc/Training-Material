class HomePage

  SETTINGS_BUTTON = "protect.budgetwatch:id/action_settings"
  IMAGE_BUTTONS = "protect.budgetwatch:id/image"


  def check_homepage_displayed?
    $driver.find_element(:id, SETTINGS_BUTTON).displayed?
  end

  def click_budget_button
    $driver.find_elements(:id, IMAGE_BUTTONS)[0].click
  end

  def click_transaction_button
    $driver.find_elements(:id, IMAGE_BUTTONS)[1].click
  end

end
