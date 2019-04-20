require 'test_helper'

class NotaTrabControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nota_trab = nota_trab(:one)
  end

  test "should get index" do
    get nota_trab_index_url
    assert_response :success
  end

  test "should get new" do
    get new_nota_trab_url
    assert_response :success
  end

  test "should create nota_trab" do
    assert_difference('NotaTrab.count') do
      post nota_trab_index_url, params: { nota_trab: { aluno_id: @nota_trab.aluno_id, disciplina_id: @nota_trab.disciplina_id, nota: @nota_trab.nota, professor_id: @nota_trab.professor_id } }
    end

    assert_redirected_to nota_trab_url(NotaTrab.last)
  end

  test "should show nota_trab" do
    get nota_trab_url(@nota_trab)
    assert_response :success
  end

  test "should get edit" do
    get edit_nota_trab_url(@nota_trab)
    assert_response :success
  end

  test "should update nota_trab" do
    patch nota_trab_url(@nota_trab), params: { nota_trab: { aluno_id: @nota_trab.aluno_id, disciplina_id: @nota_trab.disciplina_id, nota: @nota_trab.nota, professor_id: @nota_trab.professor_id } }
    assert_redirected_to nota_trab_url(@nota_trab)
  end

  test "should destroy nota_trab" do
    assert_difference('NotaTrab.count', -1) do
      delete nota_trab_url(@nota_trab)
    end

    assert_redirected_to nota_trab_index_url
  end
end
