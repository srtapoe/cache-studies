package br.com.studies.cache_studies.service;

import br.com.studies.cache_studies.entity.Book;
import br.com.studies.cache_studies.exception.BookNotFoundException;
import br.com.studies.cache_studies.repository.BookRepository;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class BookService {

    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @CacheEvict(value = "books", allEntries = true)
    public Book getBookById(Long id) {
        return bookRepository.findById(id).orElse(null);
    }

    @CacheEvict(value = "books", allEntries = true)
    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    public Book saveBook(Book book) {
        return bookRepository.save(book);
    }

    @CachePut(value = "books", key = "#book.id")
    public Book updateBook(Book book) {
        return bookRepository.save(book);
    }

    @CacheEvict(value = "books", key = "#id")
    public void deleteBookById(Long id) throws BookNotFoundException {
        if (bookRepository.existsById(id)) {
            bookRepository.deleteById(id);
        } else {
            throw new BookNotFoundException("Book with ID " + id + " does not exist.");
        }
    }


}
