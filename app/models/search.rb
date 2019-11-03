class Search

  def initialize query
    @query = query
  end

  def get_search
    HTTParty.get('https://www.boardgamegeek.com/xmlapi2/search?query='+ @query + '&pagesize=15&page=1')
  end

end
