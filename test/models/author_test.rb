require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "should show formatted with two names" do
    author = Author.new
    names = author.format_with_two_names(author.name = "Joao Chaves")
    names_2 = author.format_with_two_names(author.name = "joao chaves")
    assert_equal "CHAVES, Joao", names
    assert_equal "CHAVES, Joao", names_2
  end

  test "should show formatted with one name" do
    author = Author.new
    name = author.format_with_one_name(author.name = "Chaves")
    assert_equal "CHAVES", name
  end

  test "should show formatted with more than two words" do
    author = Author.new
    names = author.format_greater_two_names(author.name = "Joao Chaves Junior")
    names_2 = author.format_greater_two_names(author.name = "Joao Chaves Rodrigues")
    names_3 = author.format_greater_two_names(author.name = "joao chaves rodrigues")
    names_4 = author.format_greater_two_names(author.name = "Celso de Araujo")
    names_5 = author.format_greater_two_names(author.name = "Celso de Araujo Neto")

    assert_equal "CHAVES JUNIOR, Joao", names
    assert_equal "RODRIGUES, Joao", names_2
    assert_equal "RODRIGUES, Joao", names_3
    assert_equal "ARAUJO, Celso de", names_4
    assert_equal "ARAUJO NETO, Celso de", names_5
  end

end
