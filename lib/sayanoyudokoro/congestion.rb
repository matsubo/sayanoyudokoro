module Sayanoyudokoro
  class Congestion
    def self.current_status
      require "open-uri"
      url = "https://www.sayanoyudokoro.co.jp/"
      res = URI.open(url)
      body = res.read

      degree = nil

      # degree
      if (match = body.match(%r{(https://pbs\.twimg\.com/media/[\w-]+\.png)}))
        image_url = match[1]

        digest = Digest::SHA1.hexdigest(URI.open(image_url).read.unpack("c*").join)

        degree = 3 if digest == "ad256cae53f7d0f51a3bdd3550858679aea640f8"
        degree = 2 if digest == "b2024cb98c0a3ae2e195bab05d3e7dfa30122d5d"
        degree = 1 if digest == "14f6acb99685d227e3cb650cf8a96f99d351ffc9"

        # closed
        degree = nil if digest == "e7cd3115292c61388e50f3502099b9becd168581"
      end

      # time
      time = Time.now
      if (match = body.match(%r{(\d{4})/(\d{2})/(\d{2}) (\d{2}):(\d{2}):(\d{2})}))
        time = Time.new(
          match[1],
          match[2],
          match[3],
          match[4],
          match[5],
          match[6]
        )
      end

      { time: time, degree: degree }
    end
  end
end
