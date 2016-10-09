class Searcher
    attr_accessor :id, :nickname, :latitude, :longitude
    def initialize()
        nickname_list = ["健太郎", "まーくん", "わっちゃん", "よしくん", "とっきー"]
        lati_list = [43.0675, 43.0455, 43.0664, 43.0555, 43.0222]
        longi_list = [141.350584, 141.3507689, 141.351843, 141.350111, 141.350999]
        rand_idx = rand(0...nickname_list.size)

        @id = "000013c1de113f73a7000001"
        @nickname = nickname_list[rand_idx]
        @latitude = lati_list[rand_idx]
        @longitude = longi_list[rand_idx]

    end

    def getHash()
        data = {
            id: @id,
            nickname: @nickname,
            latitude: @latitude,
            longitude: @longitude
        }
    end
    def self.getSearchers()
        list = []
        rand(0..5).times do
            list.push(Searcher.new().getHash)
        end
        list
    end
end
