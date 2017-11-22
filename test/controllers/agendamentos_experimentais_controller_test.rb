require 'test_helper'

class AgendamentosExperimentaisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendamentos_experimentai = agendamentos_experimentais(:one)
  end

  test "should get index" do
    get agendamentos_experimentais_url
    assert_response :success
  end

  test "should get new" do
    get new_agendamentos_experimentai_url
    assert_response :success
  end

  test "should create agendamentos_experimentai" do
    assert_difference('AgendamentosExperimentai.count') do
      post agendamentos_experimentais_url, params: { agendamentos_experimentai: { Animals_id: @agendamentos_experimentai.Animals_id, Voluntarios_id: @agendamentos_experimentai.Voluntarios_id, data: @agendamentos_experimentai.data, timestamps: @agendamentos_experimentai.timestamps } }
    end

    assert_redirected_to agendamentos_experimentai_url(AgendamentosExperimentai.last)
  end

  test "should show agendamentos_experimentai" do
    get agendamentos_experimentai_url(@agendamentos_experimentai)
    assert_response :success
  end

  test "should get edit" do
    get edit_agendamentos_experimentai_url(@agendamentos_experimentai)
    assert_response :success
  end

  test "should update agendamentos_experimentai" do
    patch agendamentos_experimentai_url(@agendamentos_experimentai), params: { agendamentos_experimentai: { Animals_id: @agendamentos_experimentai.Animals_id, Voluntarios_id: @agendamentos_experimentai.Voluntarios_id, data: @agendamentos_experimentai.data, timestamps: @agendamentos_experimentai.timestamps } }
    assert_redirected_to agendamentos_experimentai_url(@agendamentos_experimentai)
  end

  test "should destroy agendamentos_experimentai" do
    assert_difference('AgendamentosExperimentai.count', -1) do
      delete agendamentos_experimentai_url(@agendamentos_experimentai)
    end

    assert_redirected_to agendamentos_experimentais_url
  end
end
