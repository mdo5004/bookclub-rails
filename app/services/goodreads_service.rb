require 'json'
class GoodreadsService
    def self.search(q = '')
        search= "https://www.goodreads.com/search/index.xml?key=#{ENV['GOODREADS_KEY']}&q=#{q}" 
        resp = Faraday.get(search) 
        xml_resp = Nokogiri::XML(resp.body)
        results = xml_resp.css("work").collect { |work| 
            {
                author: work.css('author').css('name').text,
                author_id: work.css('author').css('id').text,
                title: work.css('title').text,
                book_id: work.css('id').text,
                publication_year: work.css('original_publication_year').text,
                average_rating: work.css('average_rating').text,
                image_url: work.css('image_url').text,
                small_image_url: work.css('small_image_url').text                
            }
        }
        return results
    end
end