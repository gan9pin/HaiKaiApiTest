class Entry
    def self.getEntries()
        data = [
                  {
                    "entry_id": "0000sgdvawepfjp97293345rsgwr344t",
                    "nickname": "おばさん",
                    "searcher_list": [
                        "000013c1de113f73a7000001",
                        "111113c1de113f73a7000001"
                    ],
                    "status": "undiscovered", #未発見、発見済み
                    "timestamp": "2014-07-16T09:00:00+09:00"
                  },
                  {
                    "entry_id": "1111sgdvawepfjp97293345rsgwr344t",
                    "nickname": "おじさん",
                    "searcher_list": [
                        "222213c1de113f73a7000001",
                        "333313c1de113f73a7000001",
                        "444413c1de113f73a7000001"
                    ],
                    "status": "undiscovered", #未発見、発見済み
                    "timestamp": "2014-07-16T09:00:00+09:00"
                  },
                  {
                    "entry_id": "2222sgdvawepfjp97293345rsgwr344t",
                    "nickname": "花子ばあちゃん",
                    "searcher_list": [
                        "444413c1de113f73a7000001"
                    ],
                    "status": "discovered", #未発見、発見済み
                    "timestamp": "2014-07-16T09:00:00+09:00"
                  },
                  {
                    "entry_id": "3333sgdvawepfjp97293345rsgwr344t",
                    "nickname": "ムネオおじいさん",
                    "searcher_list": [
                        "222213c1de113f73a7000001",
                        "333313c1de113f73a7000001",
                        "444413c1de113f73a7000001",
                        "111113c1de113f73a7000001",
                        "000013c1de113f73a7000001"
                    ],
                    "status": "discovered", #未発見、発見済み
                    "timestamp": "2014-07-16T09:00:00+09:00"
                  }
                ]
    end
end
