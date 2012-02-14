# Check out https://github.com/joshbuddy/http_router for more information on HttpRouter
HttpRouter.new do
  add('/').to(HomeAction)
  get('/events').to(EventsAction)
  get('/subscribe').to(SubscribeAction)
end
