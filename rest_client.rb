require 'rest-client'

def search
    puts "Enter search engine url (Optional)"
    url = gets.chomp

    if url == ''
       url = 'https://www.bing.com/search'
    end

    puts "Enter search query:"
    input = gets.chomp


    @response = RestClient.get url,{params: {'q' => input}}

   puts "Code: #{@response.code}"

   puts "Cookies: #{@response.cookies}"

   puts "Headers: #{@response.headers}"

   puts "Body: #{@response.body}"

   puts "URL: #{@response.url}"
end
search
