require 'test_helper'

class ProfesorAlumnosControllerTest < ActionController::TestCase
  setup do
    @profesor_alumno = profesor_alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesor_alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesor_alumno" do
    assert_difference('ProfesorAlumno.count') do
      post :create, profesor_alumno: { alumno_id: @profesor_alumno.alumno_id, profesor_id: @profesor_alumno.profesor_id }
    end

    assert_redirected_to profesor_alumno_path(assigns(:profesor_alumno))
  end

  test "should show profesor_alumno" do
    get :show, id: @profesor_alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profesor_alumno
    assert_response :success
  end

  test "should update profesor_alumno" do
    patch :update, id: @profesor_alumno, profesor_alumno: { alumno_id: @profesor_alumno.alumno_id, profesor_id: @profesor_alumno.profesor_id }
    assert_redirected_to profesor_alumno_path(assigns(:profesor_alumno))
  end

  test "should destroy profesor_alumno" do
    assert_difference('ProfesorAlumno.count', -1) do
      delete :destroy, id: @profesor_alumno
    end

    assert_redirected_to profesor_alumnos_path
  end
end
