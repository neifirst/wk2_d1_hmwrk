require('minitest/rg')
require('minitest/autorun')
require_relative('../library')

class TestLibrary < MiniTest::Test


  def setup


    @books = [

     {
        title: "stark",
        rental_details: {
          student_name: "Jeff",
          date: "16/04/17"
        }
      },

     {
        title: "pyramids",
        rental_details: {
          student_name: "Ellie",
          date: "12/12/17"
        }
      }
    ]


    @library = Library.new(@books)

  end



  def test_get_book_info

    assert_equal(@books[1], @library.get_book_info("pyramids"))

  end


  def test_get_rental_details

    assert_equal(@books[0][:rental_details], @library.get_rental_details("stark"))

  end


  def test_add_book

    @library.add_book("magician", "", "")
    assert_equal(3, @books.length())

  end



  def test_change_rental_details

    @library.change_rental_details("stark", "Jean", "14/02/18")

    assert_equal(@books[0][:rental_details], @library.get_rental_details("stark"))

  end


end
