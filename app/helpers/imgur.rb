require 'net/http'
require 'net/https'
require 'open-uri'
require 'json'
require 'base64'

class Imgur

  API_URI = URI.parse('https://api.imgur.com')
  API_PUBLIC_KEY = 'Client-ID 6936b8a78cfe6cb'

  def initialize
  end

  def web_client
    http = Net::HTTP.new(API_URI.host, API_URI.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    http
  end

  def post_image(image_url)
    end_points = {
          image: '3/image',
          upload: '/3/upload'
        }

    params = { image: image_url }

    request = Net::HTTP::Post.new(API_URI.request_uri + end_points[:image])
    request.set_form_data(params)
    response = make_call(request)

    link = JSON.parse(response.body)['data']['link']
    delete_hash = JSON.parse(response.body)['data']['deletehash']

    [link, delete_hash]
  end

  def delete_image(delete_hash)
    end_points = {
        image: "3/image/#{delete_hash}"
      }

    request = Net::HTTP::Delete.new(API_URI.request_uri + end_points[:image])
    response = make_call(request)
  end


  def make_call(request)
    request.add_field('Authorization', API_PUBLIC_KEY)

    web_client.request(request)
  end
end
