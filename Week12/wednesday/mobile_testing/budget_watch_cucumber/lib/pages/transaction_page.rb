class TransactionPage

  ADD_BUTTON = "protect.budgetwatch:id/action_add"
  NAME_FIELD = "protect.budgetwatch:id/nameEdit"
  ACCOUNT_FIELD = "protect.budgetwatch:id/accountEdit"
  VALUE_FIELD = "protect.budgetwatch:id/valueEdit"
  NOTE_FIELD = "protect.budgetwatch:id/noteEdit"
  TRANSACTION_NAME_LABEL = "protect.budgetwatch:id/name"


  def transaction_page_displayed?
    $driver.find_element(:id, ADD_BUTTON).displayed?
  end

  def enter_transaction name, account, value, note
    $driver.find_element(:id, ADD_BUTTON).click
    $driver.find_element(:id, NAME_FIELD).send_keys name
    $driver.find_element(:id, ACCOUNT_FIELD).send_keys account
    $driver.find_element(:id, VALUE_FIELD).send_keys value
    $driver.find_element(:id, NOTE_FIELD).send_keys note
  end

  def budget_added?
    $driver.find_element(:id, TRANSACTION_NAME_LABEL).displayed?
  end


end
