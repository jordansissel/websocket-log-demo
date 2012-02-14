class SubscribeAction < Cramp::Websocket
  on_start :start
  on_finish :finish
  on_data :receive
  
  def receive(data)
    # Shouldn't get anything.
  end
  
  private
  def parse_json(str)
    Yajl::Parser.parse(str, :symbolize_keys => true)
  end
end
