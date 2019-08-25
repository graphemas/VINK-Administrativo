require 'net/http'
require 'json'
class ApplicationController < ActionController::Base

  def gt_data(url_from)
    url = url_from
    uri = URI(url)
    response = Net::HTTP.get(uri)
    response['Content-Type']
    response['application/json']
    p "==============="
    @data = JSON.parse(response)
  end

end
