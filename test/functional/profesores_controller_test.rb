require 'test_helper'

class ProfesoresControllerTest < ActionController::TestCase
  setup do
    @profesor = profesores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesor" do
    assert_difference('Profesor.count') do
      post :create, profesor: { nombre: @profesor.nombre }
    end

    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should show profesor" do
    get :show, id: @profesor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesor
    assert_response :success
  end

  test "should update profesor" do
    put :update, id: @profesor, profesor: { nombre: @profesor.nombre }
    assert_redirected_to profesor_path(assigns(:profesor))
  end

  test "should destroy profesor" do
    assert_difference('Profesor.count', -1) do
      delete :destroy, id: @profesor
    end

    assert_redirected_to profesores_path
  end
end
