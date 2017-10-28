class ImageAPI
  def getImage(query)
    @resp = Faraday.get 'https://api.cognitive.microsoft.com/bing/v7.0/images/search' do |req|
      req.headers['Ocp-Apim-Subscription-Key'] = ENV['BING_KEY']
      req.params['q'] = URI.escape(query)
      req.params['count'] = '1'
    end
    
    return JSON.parse(@resp.body)
  end

end
