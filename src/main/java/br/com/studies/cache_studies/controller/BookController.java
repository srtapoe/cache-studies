package br.com.studies.cache_studies.controller;

import br.com.studies.cache_studies.entity.Book;
import br.com.studies.cache_studies.exception.BookNotFoundException;
import br.com.studies.cache_studies.record.BookDto;
import br.com.studies.cache_studies.service.BookService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class BookController {

    private final BookService bookService;

    public BookController(final BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/books/{id}")
    public BookDto getBook(@PathVariable Long id) throws BookNotFoundException {
        Book book = bookService.getBookById(id);
        if (book == null) {
            throw new BookNotFoundException("The book is not found with id " + id);
        }
        return new BookDto(book.getId(), book.getTitle(), book.getAuthor());
    }

    @GetMapping("/books")
    public List<BookDto> getAllBooks() {
        List<Book> books = bookService.getAllBooks();
        List<BookDto> bookDtos = new ArrayList<>();
        for (Book book : books) {
            bookDtos.add(new BookDto(book.getId(), book.getTitle(), book.getAuthor()));
        }
        return bookDtos;
    }

    @PostMapping("/books")
    public Book saveBook(@Valid @RequestBody BookDto bookDto) {
        Book book = new Book();
        book.setId(bookDto.id());
        book.setTitle(bookDto.title());
        book.setAuthor(bookDto.author());
        return bookService.saveBook(book);
    }

    @PutMapping("/books/{id}")
    public Book updateBook(@PathVariable Long id, @Valid @RequestBody BookDto bookDto) {
        Book book = bookService.getBookById(id);
        book.setTitle(bookDto.title());
        book.setAuthor(bookDto.author());
        return bookService.updateBook(book);
    }

    @DeleteMapping("/books/{id}")
    public ResponseEntity<Book> deleteBook(@PathVariable Long id) throws BookNotFoundException {
        bookService.deleteBookById(id);
        return ResponseEntity.noContent().build();
    }
}
