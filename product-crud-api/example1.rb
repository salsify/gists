require 'rest_client'

# Create the product
product = {'SKU' => '12345', 'Name' => 'Big TV', 'Brand' => 'Salsify'}
RestClient.post('https://app.salsify.com/api/v1/products/', product.to_json, 
                accept: 'application/json', content_type: 'application/json', 
                'X-AUTH-TOKEN' => 'ABC123', 'X-USER-EMAIL' => 'joe@customer.com')

# Update the product
product = {'Inventory' => '10'}
RestClient.put('https://app.salsify.com/api/v1/products/12345', product.to_json, 
               accept: 'application/json', content_type: 'application/json', 
               'X-AUTH-TOKEN' => 'ABC123', 'X-USER-EMAIL' => 'joe@customer.com')

# Get the product
result = RestClient.get('https://app.salsify.com/api/v1/products/12345', accept: 'application/json', 
                        'X-AUTH-TOKEN' => 'ABC123', 'X-USER-EMAIL' => 'joe@customer.com')
product = JSON.parse(result)

# Delete the product
RestClient.delete('https://app.salsify.com/api/v1/products/12345', accept: 'application/json', 
                  'X-AUTH-TOKEN' => 'ABC123', 'X-USER-EMAIL' => 'joe@customer.com')
