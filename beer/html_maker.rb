require_relative 'store_collector'
# require 'open-uri'
# require 'net/http'


# client = Google::APIClient.new
#     key = Google::APIClient::PKCS12.load_key('client.p12', 'notasecret')
#     service_account = Google::APIClient::JWTAsserter.new(
#         '123456-abcdef@developer.gserviceaccount.com',
#         'https://www.googleapis.com/auth/prediction',
#         key)
#     client.authorization = service_account.authorize


	# Initialize the client & Google+ API
    require 'google/api_client'
    client = Google::APIClient.new
    plus = client.discovered_api('plus')

    # Initialize OAuth 2.0 client    
    client.authorization.client_id = '433674093306.apps.googleusercontent.com'
    client.authorization.client_secret = 'cYI2jL_THVsqsBBM-Mws3p6g'
    client.authorization.redirect_uri = '<https://www.tscherrig.net/oauth2callback>'
    
    # client.authorization.scope = 'https://www.googleapis.com/auth/plus.me'

    # Request authorization
    redirect_uri = client.authorization.authorization_uri

    # Wait for authorization code then exchange for token
    client.authorization.code = 'cYI2jL_THVsqsBBM-Mws3p6g'
    client.authorization.fetch_access_token!







# params = {
#   "location": {
#     "lat": -33.8669710,
#     "lng": 151.1958750
#   },
#   "accuracy": 50,
#   "name": "Google Shoes!",
#   "types": ["store"],
#   "language": "en-AU"
# }

# POST "https://maps.googleapis.com/maps/api/place/add/json?sensor=false&key=cYI2jL_THVsqsBBM-Mws3p6g"
# Host: maps.googleapis.com





