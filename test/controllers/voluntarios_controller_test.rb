require 'test_helper'

class VoluntariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @voluntario = voluntarios(:one)
  end

  test "should get index" do
    get voluntarios_url
    assert_response :success
  end

  test "should get new" do
    get new_voluntario_url
    assert_response :success
  end

  test "should create voluntario" do
    assert_difference('Voluntario.count') do
      post voluntarios_url, params: { voluntario: { nome: @voluntario.nome, timestamps: @voluntario.timestamps, tipo: @voluntario.tipo } }
    end

    assert_redirected_to voluntario_url(Voluntario.last)
  end

  test "should show voluntario" do
    get voluntario_url(@voluntario)
    assert_response :success
  end

  test "should get edit" do
    get edit_voluntario_url(@voluntario)
    assert_response :success
  end

  test "should update voluntario" do
    patch voluntario_url(@voluntario), params: { voluntario: { nome: @voluntario.nome, timestamps: @voluntario.timestamps, tipo: @voluntario.tipo } }
    assert_redirected_to voluntario_url(@voluntario)
  end

  test "should destroy voluntario" do
    assert_difference('Voluntario.count', -1) do
      delete voluntario_url(@voluntario)
    end

    assert_redirected_to voluntarios_url
  end
end
