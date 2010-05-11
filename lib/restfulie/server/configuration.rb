module Restfulie::Server::Configuration
  #Defines host to be passed to polymorphic_url.
  # You need to setup this to your own domain in order to generate meaningful links.
  # If you want to configure the automatically generated links to point to something different
  # than localhost:3000, change this configuration.
  # You can also do it by using the setup method.
  mattr_accessor :host
  @@host = 'localhost:3000'
  
  # Passes a symbol to polymorphic_url in order to use a namespaced named_route.
  # So, if config.named_route_prefix = :rest, it will search for rest_album_url,
  # rest_album_songs_url, and so on.
  mattr_accessor :named_route_prefix
  @@named_route_prefix = nil
        
  # This defines a Rails-like way to setup options. You can do, in a initializer:
  #   Restfulie::Server.setup do |config|
  #     config.host = 'mydomain.com'
  #   end
  # You can also set up a different port
  #   Restfulie::Server.setup do |config|
  #     config.host = 'mydomain.com:3000'
  #   end
  def self.setup
    yield self
  end
end

