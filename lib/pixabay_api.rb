require 'httparty'

class PixabayApi

  include HTTParty
  base_uri 'https://pixabay.com/api'

  def complete_path(name, animal_type)
    url = "/?key=ENV['PIXABAY_API_KEY']&q=#{ name }+#{ animal_type }&image_type=photo&page=1&per_page=3"
    response = HTTParty.get(url)
  end

end
