module BlossomApi
  class Project
    module Card

      def create_card(title, description)
        title_response = post_card_title(title)
        if title_response.code == 200
          description_response = patch_card_description(title_response['id'], description)
          if description_response.code == 200
            return true
          else
            return false
          end
        else
          return false
        end
      end

      private

        def post_card_title(title)
          HTTParty.post(create_card_url, body: create_card_options(title), headers: json_headers)
        end

        def patch_card_description(card_id, description)
          HTTParty.patch(update_description_url(card_id), body: update_description_options(description), headers: json_headers)
        end

        def create_card_url
          "#{BASE_URL}/cards/create_card?id=#{@organization_id}&accessToken=#{@access_token}"
        end

        def update_description_url(card_id)
          "#{BASE_URL}/cards/#{card_id}?accessToken=#{@access_token}"
        end

        def create_card_options(title)
          { projectId: @project_id, title: title}.to_json
        end

        def update_description_options(description)
          { description: description }.to_json
        end

        def json_headers
          { 'Content-Type' => 'application/json' }
        end

    end
  end
end
