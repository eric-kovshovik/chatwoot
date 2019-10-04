class Integrations::Facebook::MessageParser
  def initialize(response_json)
    @response = response_json
  end

  def sender_id
    @response.sender['id']
  end

  def recipient_id
    @response.recipient['id']
  end

  def time_stamp
    @response.sent_at
  end

  def content
    @response.text
  end

  def sequence
    @response.seq
  end

  def attachments
    @response.attachments
  end

  def identifier
    @response.id
  end

  def echo?
    @response.echo?
  end

  def app_id
    @response.app_id
  end

  def sent_from_chatwoot_app?
    app_id && app_id == ENV['fb_app_id'].to_i
  end
end

# Sample Reponse
# {
#   "sender":{
#     "id":"USER_ID"
#   },
#   "recipient":{
#     "id":"PAGE_ID"
#   },
#   "timestamp":1458692752478,
#   "message":{
#     "mid":"mid.1457764197618:41d102a3e1ae206a38",
#     "seq":73,
#     "text":"hello, world!",
#     "quick_reply": {
#       "payload": "DEVELOPER_DEFINED_PAYLOAD"
#     }
#   }
# }

# ECHO from own app

# {"sender"=>{"id"=>"379460302081528"}, "recipient"=>{"id"=>"403092229814994"}, "timestamp"=>1493270145685, "message"=>{"is_echo"=>true, "app_id"=>1847193292179369, "mid"=>"mid.$cAAED7rlYNsVh3xtylVbrdYqH8iEp", "seq"=>167221, "text"=>"sad"}}
