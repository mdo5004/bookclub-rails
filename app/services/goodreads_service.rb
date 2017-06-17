require 'json'
class GoodreadsService
    def self.books(params = {})
        test_search= "https://www.goodreads.com/search/index.xml?key=U19zPpjBZNZMUrsjpA&q=Ender%27s+Game" 
        resp = Faraday.get(test_search) 
        xml_resp = Nokogiri::XML(resp.body)
        xml_resp.css("work").each { |work| 
            BookSearchResult.create({
                author: work.css('author').css('name').text,
                author_id: work.css('author').css('id').text,
                title: work.css('title').text,
                book_id: work.css('id').text,
                publication_year: work.css('original_publication_year').text,
                average_rating: work.css('average_rating').text,
                image_url: work.css('image_url').text,
                small_image_url: work.css('small_image_url').text                
            })
        }
        return BookSearchResult.all
    end
end