CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE book
(
    id     VARCHAR(36)  NOT NULL PRIMARY KEY,
    title  VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL
);

INSERT INTO book (id, title, author)
VALUES ('1', 'O Senhor dos Anéis', 'J.R.R. Tolkien');
INSERT INTO book (id, title, author)
VALUES ('2', 'Harry Potter', 'J.K. Rowling');
INSERT INTO book (id, title, author)
VALUES ('3', 'Clean Code', 'Robert C. Martin');


SELECT *
FROM book;

INSERT INTO book (id, title, author)
VALUES ('4', 'Dom Quixote', 'Miguel de Cervantes'),
       ('5', 'Orgulho e Preconceito', 'Jane Austen'),
       ('6', '1984', 'George Orwell'),
       ('7', 'O Apanhador no Campo de Centeio', 'J.D. Salinger'),
       ('8', 'O Pequeno Príncipe', 'Antoine de Saint-Exupéry'),
       ('9', 'Moby Dick', 'Herman Melville'),
       ('10', 'Os Miseráveis', 'Victor Hugo'),
       ('11', 'Guerra e Paz', 'Liev Tolstói'),
       ('12', 'Crime e Castigo', 'Fiódor Dostoiévski'),
       ('13', 'O Hobbit', 'J.R.R. Tolkien'),
       ('14', 'A Revolução dos Bichos', 'George Orwell'),
       ('15', 'Drácula', 'Bram Stoker'),
       ('16', 'O Nome da Rosa', 'Umberto Eco'),
       ('17', 'A Montanha Mágica', 'Thomas Mann'),
       ('18', 'O Conde de Monte Cristo', 'Alexandre Dumas'),
       ('19', 'As Crônicas de Nárnia', 'C.S. Lewis'),
       ('20', 'A Menina que Roubava Livros', 'Markus Zusak'),
       ('21', 'Cem Anos de Solidão', 'Gabriel García Márquez'),
       ('22', 'Memórias Póstumas de Brás Cubas', 'Machado de Assis'),
       ('23', 'O Alquimista', 'Paulo Coelho'),
       ('24', 'A Cabana', 'William P. Young'),
       ('25', 'O Silmarillion', 'J.R.R. Tolkien'),
       ('26', 'O Velho e o Mar', 'Ernest Hemingway'),
       ('27', 'O Grande Gatsby', 'F. Scott Fitzgerald'),
       ('28', 'Admirável Mundo Novo', 'Aldous Huxley'),
       ('29', 'Jane Eyre', 'Charlotte Brontë'),
       ('30', 'Os Três Mosqueteiros', 'Alexandre Dumas'),
       ('31', 'O Morro dos Ventos Uivantes', 'Emily Brontë'),
       ('32', 'Alice no País das Maravilhas', 'Lewis Carroll'),
       ('33', 'O Jardim Secreto', 'Frances Hodgson Burnett'),
       ('34', 'As Aventuras de Sherlock Holmes', 'Arthur Conan Doyle'),
       ('35', 'A Odisséia', 'Homero'),
       ('36', 'Os Lusíadas', 'Luís de Camões'),
       ('37', 'As Mil e Uma Noites', 'Vários Autores'),
       ('38', 'O Livro de Ouro da Mitologia', 'Thomas Bulfinch'),
       ('39', 'Os Irmãos Karamázov', 'Fiódor Dostoiévski'),
       ('40', 'Madame Bovary', 'Gustave Flaubert'),
       ('41', 'O Processo', 'Franz Kafka'),
       ('42', 'Metamorfose', 'Franz Kafka'),
       ('43', 'A Divina Comédia', 'Dante Alighieri'),
       ('44', 'Odisseia de Homero', 'Homero'),
       ('45', 'O Amor nos Tempos do Cólera', 'Gabriel García Márquez'),
       ('46', 'A Metamorfose', 'Franz Kafka'),
       ('47', 'O Retrato de Dorian Gray', 'Oscar Wilde'),
       ('48', 'O Corcunda de Notre-Dame', 'Victor Hugo'),
       ('49', 'O Leopardo', 'Giuseppe Tomasi di Lampedusa'),
       ('50', 'O Vermelho e o Negro', 'Stendhal'),
       ('51', 'A Letra Escarlate', 'Nathaniel Hawthorne'),
       ('52', 'As Vinhas da Ira', 'John Steinbeck'),
       ('53', 'O Tempo e o Vento', 'Érico Veríssimo'),
       ('54', 'Senhora', 'José de Alencar'),
       ('55', 'Iracema', 'José de Alencar'),
       ('56', 'O Guarani', 'José de Alencar'),
       ('57', 'Lucíola', 'José de Alencar'),
       ('58', 'Tieta do Agreste', 'Jorge Amado'),
       ('59', 'Gabriela, Cravo e Canela', 'Jorge Amado'),
       ('60', 'Capitães da Areia', 'Jorge Amado'),
       ('61', 'Dom Casmurro', 'Machado de Assis'),
       ('62', 'Quincas Borba', 'Machado de Assis'),
       ('63', 'Esaú e Jacó', 'Machado de Assis'),
       ('64', 'Memórias de um Sargento de Milícias', 'Manuel Antônio de Almeida'),
       ('65', 'O Alienista', 'Machado de Assis'),
       ('66', 'A Moreninha', 'Joaquim Manuel de Macedo'),
       ('67', 'Amar, Verbo Intransitivo', 'Mário de Andrade'),
       ('68', 'Macunaíma', 'Mário de Andrade'),
       ('69', 'Os Sertões', 'Euclides da Cunha'),
       ('70', 'A Escrava Isaura', 'Bernardo Guimarães'),
       ('71', 'Auto da Compadecida', 'Ariano Suassuna'),
       ('72', 'Vidas Secas', 'Graciliano Ramos'),
       ('73', 'Angústia', 'Graciliano Ramos'),
       ('74', 'São Bernardo', 'Graciliano Ramos'),
       ('75', 'Caetés', 'Graciliano Ramos'),
       ('76', 'O Quinze', 'Rachel de Queiroz'),
       ('77', 'Memorial de Maria Moura', 'Rachel de Queiroz'),
       ('78', 'A Pedra do Reino', 'Ariano Suassuna'),
       ('79', 'Noite na Taverna', 'Álvares de Azevedo'),
       ('80', 'Lira dos Vinte Anos', 'Álvares de Azevedo'),
       ('81', 'A Hora da Estrela', 'Clarice Lispector'),
       ('82', 'Perto do Coração Selvagem', 'Clarice Lispector'),
       ('83', 'Laços de Família', 'Clarice Lispector'),
       ('84', 'Paixão Segundo G.H.', 'Clarice Lispector'),
       ('85', 'A Maçã no Escuro', 'Clarice Lispector'),
       ('86', 'Sagarana', 'João Guimarães Rosa'),
       ('87', 'Primeiras Estórias', 'João Guimarães Rosa'),
       ('88', 'Tutaméia', 'João Guimarães Rosa'),
       ('89', 'Grande Sertão: Veredas', 'João Guimarães Rosa'),
       ('90', 'O Idiota', 'Fiódor Dostoiévski'),
       ('91', 'Ana Karênina', 'Liev Tolstói'),
       ('92', 'Infância', 'Graciliano Ramos'),
       ('93', 'Coração, Cabeça e Estômago', 'Camilo Castelo Branco'),
       ('94', 'O Primo Basílio', 'Eça de Queirós'),
       ('95', 'Os Maias', 'Eça de Queirós'),
       ('96', 'A Cidade e as Serras', 'Eça de Queirós'),
       ('97', 'Amor de Perdição', 'Camilo Castelo Branco'),
       ('98', 'A Tragédia da Rua das Flores', 'Eça de Queirós'),
       ('99', 'O Cortiço', 'Aluísio Azevedo'),
       ('100', 'Casa de Pensão', 'Aluísio Azevedo');


INSERT INTO book (id, title, author)
VALUES ('101', 'O Homem Invisível', 'H.G. Wells'),
       ('102', 'Viagem ao Centro da Terra', 'Júlio Verne'),
       ('103', 'A Ilha do Tesouro', 'Robert Louis Stevenson'),
       ('104', 'As Aventuras de Tom Sawyer', 'Mark Twain'),
       ('105', 'O Médico e o Monstro', 'Robert Louis Stevenson'),
       ('106', 'Os Contos de Beedle, o Bardo', 'J.K. Rowling'),
       ('107', 'O Código Da Vinci', 'Dan Brown'),
       ('108', 'Inferno', 'Dan Brown'),
       ('109', 'Anjos e Demônios', 'Dan Brown'),
       ('110', 'O Símbolo Perdido', 'Dan Brown');

ALTER TABLE book MODIFY id BIGINT AUTO_INCREMENT;
