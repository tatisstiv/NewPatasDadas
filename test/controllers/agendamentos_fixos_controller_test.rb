require 'test_helper'

class AgendamentosFixosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendamentos_fixo = agendamentos_fixos(:one)
  end

  test "should get index" do
    get agendamentos_fixos_url
    assert_response :success
  end

  test "should get new" do
    get new_agendamentos_fixo_url
    assert_response :success
  end

  test "should create agendamentos_fixo" do
    assert_difference('AgendamentosFixo.count') do
      post agendamentos_fixos_url, params: { agendamentos_fixo: { Animals_id: @agendamentos_fixo.Animals_id, Voluntarios_id: @agendamentos_fixo.Voluntarios_id, dia_da_semana: @agendamentos_fixo.dia_da_semana, timestamps: @agendamentos_fixo.timestamps } }
    end

    assert_redirected_to agendamentos_fixo_url(AgendamentosFixo.last)
  end

  test "should show agendamentos_fixo" do
    get agendamentos_fixo_url(@agendamentos_fixo)
    assert_response :success
  end

  test "should get edit" do
    get edit_agendamentos_fixo_url(@agendamentos_fixo)
    assert_response :success
  end

  test "should update agendamentos_fixo" do
    patch agendamentos_fixo_url(@agendamentos_fixo), params: { agendamentos_fixo: { Animals_id: @agendamentos_fixo.Animals_id, Voluntarios_id: @agendamentos_fixo.Voluntarios_id, dia_da_semana: @agendamentos_fixo.dia_da_semana, timestamps: @agendamentos_fixo.timestamps } }
    assert_redirected_to agendamentos_fixo_url(@agendamentos_fixo)
  end

  test "should destroy agendamentos_fixo" do
    assert_difference('AgendamentosFixo.count', -1) do
      delete agendamentos_fixo_url(@agendamentos_fixo)
    end

    assert_redirected_to agendamentos_fixos_url
  end
end
