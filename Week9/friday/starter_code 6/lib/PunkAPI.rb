require_relative "./services/punk_services/punk_show_service"
require_relative "./services/punk_services/punk_index_service"

class PunkAPI

  def punk_show_service
    PunkShowService.new
  end

  def punk_index_service
    PunkIndexService.new
  end

end
