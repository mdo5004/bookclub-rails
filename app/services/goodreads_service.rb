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

    def self.recent_reviews
       search = "https://www.goodreads.com/review/recent_reviews.xml?key=#{ENV['GOODREADS_KEY']}"
        resp = Faraday.get(search)
        xml_resp = Nokogiri::XML(resp.body)
        reviews = xml_resp.css("review").collect { |review|
                {
                    name: review.css('user').css('display_name').text,
                    location: review.css('user').css('location').text,
                    body: review.css('body').text,
                    rating: review.css('rating').text,
                    image_url: review.css('book').css('image_url').text,
                    small_image_url: review.css('book').css('small_image_url').text,
                    book_title: review.css('book').css('title').text,
                    book_url: review.css('book').css('link').text
                    }
            }
        return reviews
    end
    def self.reviews_widget(title='')
#        conn = Faraday.new(:url => 'https://www.goodreads.com/book/title.xml')
#        
##        search= "?key=#{ENV['GOODREADS_KEY']}&title=#{title}"
#        resp = conn.get do |req|
#            req.params['key'] = ENV['GOODREADS_KEY']
#            req.params['title'] = title
#        end
        search = "https://www.goodreads.com/book/title.json?key=#{ENV['GOODREADS_KEY']}&title=#{title}"
        
        resp = Faraday.get(search)
        
        if resp.status >= 300
            redirect = Nokogiri::XML(resp.body).css("a")
        
            url = redirect[0].values[0]
            resp = Faraday.get(url+"?key=#{ENV['GOODREADS_KEY']}")
#            resp = conn.get do |req|
#                req.params['key'] = ENV['GOODREADS_KEY']
#            end
        end
        
        return resp.body
        
    end
end