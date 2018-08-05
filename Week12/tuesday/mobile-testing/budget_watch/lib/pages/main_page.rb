class MainPage

  def find_settings
    find_element(:id, "protect.budgetwatch:id/action_settings")
  end

  def click_settings
    find_settings.click
  end

end
