require 'test_helper'

class NotasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nota = notas(:one)
  end

  test "should get index" do
    get notas_url
    assert_response :success
  end

  test "should get new" do
    get new_nota_url
    assert_response :success
  end

  test "should create nota" do
    assert_difference('Nota.count') do
      post notas_url, params: { nota: { aluno_id: @nota.aluno_id, disciplina_id: @nota.disciplina_id, nota: @nota.nota, professor_id: @nota.professor_id } }
    end

    assert_redirected_to nota_url(Nota.last)
  end

  test "should show nota" do
    get nota_url(@nota)
    assert_response :success
  end

  test "should get edit" do
    get edit_nota_url(@nota)
    assert_response :success
  end

  test "should update nota" do
    patch nota_url(@nota), params: { nota: { aluno_id: @nota.aluno_id, disciplina_id: @nota.disciplina_id, nota: @nota.nota, professor_id: @nota.professor_id } }
    assert_redirected_to nota_url(@nota)
  end

  test "should destroy nota" do
    assert_difference('Nota.count', -1) do
      delete nota_url(@nota)
    end

    assert_redirected_to notas_url
  end
end
