require 'prismic'
require 'time'

class PrismicCall
  def call_api
    api = Prismic.api('https://gebusinesscase2020.cdn.prismic.io/api')
    document = api.query(Prismic::Predicates.at("document.type", "homepage"))
    results = document.results[0]
  end
end

