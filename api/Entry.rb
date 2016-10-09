class Entry

    def initialize()
        name_list = ["田中たなお", "吉田よしこ", "麻生あこ", "佐竹たけお", "伊藤いとこ"]
        nickname_list = ["たなおじさん", "よしこちゃん", "あこばあ", "たけおおじいさん", "いとこおばあさん"]
        lati_list = [43.0675, 43.0533, 43.0444, 43.0699, 43.0788]
        icon_list = [
                        "https://pbs.twimg.com/profile_images/3454464493/b79416ff0051c50154e9144493c34c1c.jpeg",
                        "http://img.freepik.com/free-photo/close-up-of-elderly-woman-with-white-shirt_1098-3484.jpg?size=338&ext=jpg",
                        "http://www.coelang.tufs.ac.jp/ja/th/vmod/picture/images/usage_122_0.jpg",
                        "http://blogimg.goo.ne.jp/user_image/22/37/c8b1eab02fb317a9158bd139aa01e258.jpg",
                        "http://cdn.amanaimages.com/preview640/11004082476.jpg",
                    ]
        longi_list = [141.350784, 141.351666, 141.352555, 141.349888, 141.348784]
        rand_idx = rand(0...name_list.size)
        adjust_time_list = [300, 600, 1800, 3600, 7200]
        time = Time.now - adjust_time_list[rand_idx]

        @entry_id = "0000sgdvawepfjp97293345rsgwr344t"
        @name = name_list[rand_idx]
        @nickname = nickname_list[rand_idx]
        @icon = icon_list[rand_idx]
        @latitude = lati_list[rand_idx]
        @longitude = longi_list[rand_idx]
        @number = 111111111
        @requester = Requester.new().getHash;
        @status_list = Status.getStatuses()
        @searcher_list = Searcher.getSearchers()
        @timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
    end

    def getHash()
        data = {
          "entry_id": @entry_id,
          "name": @name,
          "nickname": @nickname,
          "icon": @icon,
          "latitude": @latitude,
          "longitude": @longitude,
          "number": @number, #個体識別番号
          "requester": @requester,
          "status_list": @status_list,
          "searcher_list": @searcher_list,
          "timestamp": @timestamp
        }
    end

    def self.getEntries()
        list = []
        rand(0..10).times do
            list.push(Entry.new().getHash())
        end
        return list
    end
end
