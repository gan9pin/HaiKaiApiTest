class Status
    def initialize(count)
        adjust_time_list = [60, 120, 180, 240]
        searcher = Searcher.new()
        time = Time.now() - adjust_time_list[count]
        status_list = ["detectioned", "saved"]

        @id = searcher.id
        @name = searcher.nickname
        @latitude = searcher.latitude
        @longitude = searcher.longitude
        @timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
        @status = status_list[count % 2]
        @type = "searcher"
    end

    def getHash
        data = {
            id: @id,
            name: @name,
            latitude: @latitude,
            longitude: @longitude,
            timestamp: @timestamp,
            status: @status,
            type: @type
        }
    end

    def self.getStatuses()
        list = []
        rand(0..4).times do |count|
            list.push(Status.new(count).getHash())
        end
        list
    end
end
