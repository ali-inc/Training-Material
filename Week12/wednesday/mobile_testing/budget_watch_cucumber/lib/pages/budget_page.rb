class BudgetPage

  CALENDAR_BUTTON = "protect.budgetwatch:id/action_calendar"
  ADD_BUTTON = "protect.budgetwatch:id/action_add"
  NAME_FIELD = "protect.budgetwatch:id/budgetNameEdit"
  VALUE_FIELD = "protect.budgetwatch:id/valueEdit"
  SAVE_BUTTON = "protect.budgetwatch:id/action_save"
  BUDGET_NAME_LABEL = "protect.budgetwatch:id/budgetName"
  BACK_BUTTON = "//android.widget.ImageButton[@content-desc=\"Navigate up\"]"


  def budget_page_displayed?
    $driver.find_element(:id, CALENDAR_BUTTON).displayed?
  end

  def enter_budget name, value
    $driver.find_element(:id, ADD_BUTTON).click
    $driver.find_element(:id, NAME_FIELD).send_keys name
    $driver.find_element(:id, VALUE_FIELD).send_keys value  end

  def click_save
    $driver.find_element(:id, SAVE_BUTTON).click
  end

  def budget_added?
    $driver.find_element(:id, BUDGET_NAME_LABEL).displayed?
  end

  def exit_budget_page
    $driver.find_element(:xpath, BACK_BUTTON).click
  end

end
