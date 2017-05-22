require 'test_helper'

class CustomerInformationsControllerTest < ActionController::TestCase
  setup do
    @customer_information = customer_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_information" do
    assert_difference('CustomerInformation.count') do
      post :create, customer_information: { Customer_id: @customer_information.Customer_id, Date_Joined: @customer_information.Date_Joined, Email_Address: @customer_information.Email_Address, Outstanding_Charges: @customer_information.Outstanding_Charges }
    end

    assert_redirected_to customer_information_path(assigns(:customer_information))
  end

  test "should show customer_information" do
    get :show, id: @customer_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_information
    assert_response :success
  end

  test "should update customer_information" do
    patch :update, id: @customer_information, customer_information: { Customer_id: @customer_information.Customer_id, Date_Joined: @customer_information.Date_Joined, Email_Address: @customer_information.Email_Address, Outstanding_Charges: @customer_information.Outstanding_Charges }
    assert_redirected_to customer_information_path(assigns(:customer_information))
  end

  test "should destroy customer_information" do
    assert_difference('CustomerInformation.count', -1) do
      delete :destroy, id: @customer_information
    end

    assert_redirected_to customer_informations_path
  end
end
