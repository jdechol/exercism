module BookKeeping
  VERSION = 0 # Where the version number matches the one in the test.
end

class BookStore
  BOOK_PRICE = 8
  DISCOUNTED_RATES = [0.75, 0.80, 0.9, 0.95, 1].freeze
  DIFFERENT_BOOKS = 5

  def self.calculate_price(book_input)
    books = [0, 0, 0, 0, 0, 0]
    book_input.each { |book| books[book] += 1 }
    calc_price(books, DIFFERENT_BOOKS)
  end

  def self.calc_price(books, set_size)
    if set_size == 1
      sets_available = num_sets(books, set_size)
      return BOOK_PRICE * sets_available
    end

    sets_available = num_sets(books, set_size)

    min_price = calc_price(books, set_size - 1)
    current_price = 0
    sets_available.times do
      current_price += BOOK_PRICE * set_size * DISCOUNTED_RATES[DIFFERENT_BOOKS - set_size]
      books = remove_set(books, set_size)
      min_price = [current_price + calc_price(books, set_size - 1), min_price].min
    end

    min_price
  end

  def self.remove_set(books, set_size)
    index = 1
    books_left = books.clone
    set_size.times do
      index += 1 while books_left[index].zero?

      books_left[index] -= 1
      index += 1
    end
    books_left
  end

  def self.set_available(books, number)
    count = 0
    books.each do |num_left|
      count += 1 if num_left > 0
    end
    count >= number
  end

  def self.num_sets(books, set_size)
    books_left = books.clone
    count = 0
    while set_available(books_left, set_size)
      books_left = remove_set(books_left, set_size)
      count += 1
    end
    count
  end
end
