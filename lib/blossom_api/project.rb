module BlossomApi
  class Project
    require "blossom_api/project/card"

    def initialize(options = {})
      @organization_id = options[:organization_id]
      @project_id = options[:project_id]
      @access_token = options[:access_token]
    end

    include BlossomApi::Project::Card

  end
end
