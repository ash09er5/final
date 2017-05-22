json.extract! customer_information, :id, :Customer_id, :Date_Joined, :Email_Address, :Outstanding_Charges, :created_at, :updated_at
json.url customer_information_url(customer_information, format: :json)
