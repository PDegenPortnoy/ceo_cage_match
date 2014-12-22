require 'test_helper'

class CeosControllerTest < ActionController::TestCase
  setup do
    @ceo = Ceo.create!(name: "CEO One", company: "Company One")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ceos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ceo" do
    assert_difference('Ceo.count') do
      post :create, ceo: { company: @ceo.company, company_revenue: @ceo.company_revenue, name: @ceo.name, number_employees: @ceo.number_employees, salary: @ceo.salary }
    end

    assert_redirected_to ceo_path(assigns(:ceo))
  end

  test "should show ceo" do
    get :show, id: @ceo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ceo
    assert_response :success
  end

  test "should update ceo" do
    patch :update, id: @ceo, ceo: { company: @ceo.company, company_revenue: @ceo.company_revenue, name: @ceo.name, number_employees: @ceo.number_employees, salary: @ceo.salary }
    assert_redirected_to ceo_path(assigns(:ceo))
  end

  test "should destroy ceo" do
    assert_difference('Ceo.count', -1) do
      delete :destroy, id: @ceo
    end

    assert_redirected_to ceos_path
  end
end
