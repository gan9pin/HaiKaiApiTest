class Requester
    def initialize()
        name_list = ["依頼主A", "依頼主B", "依頼主C"]
        lati_list = [43.0522, 43.0822, 43.0719]
        longi_list = [141.350544, 141.351584, 141.352184]
        rand_idx = rand(0...name_list.size)
        @name = name_list[rand_idx]
        @latitude = lati_list[rand_idx]
        @longitude = longi_list[rand_idx]
    end

    def getHash()
        data = {
            name: @name,
            latitude: @latitude,
            longitude: @longitude
        }
    end
end
