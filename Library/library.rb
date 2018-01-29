class Library

  attr_accessor :books

  def initialize(input_books)

    @books = input_books

  end



  def get_book_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end


  def get_rental_details(title)
    for book in @books
      if book[:title] == title
        return book[:rental_details]
      end
    end
  end


  def add_book(title, student_name, date)

    new_book_hash = {
      title: title,
      rental_details: {
        student_name: student_name,
        date: date
      }
    }

    @books << new_book_hash

  end


  def change_rental_details(title, new_name, new_date)

    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = new_name
        book[:rental_details][:date] = new_date
      end
    end

  end


end
