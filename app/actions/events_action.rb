class EventsAction < Cramp::Websocket
  on_data :receive
  
  def receive(data)
    $stderr.puts data.inspect
    #msg = parse_json(data)
    #$stderr.puts msg.inspect
  end
  
  private
  def parse_json(str)
    Yajl::Parser.parse(str, :symbolize_keys => true)
  end
end
