# Estudo de Cache com Spring, Redis e Java 👩‍💻

Este repositório foi criado para estudar conceitos de cache usando **Spring Framework**, **Redis** e **Java**. A aplicação simula um pequeno sistema de e-commerce de livros com operações CRUD otimizadas pelo uso de cache.


## Material de estudo 📍
- [Minicurso Spring Cache + Redis](https://www.youtube.com/playlist?list=PL0D5C4QG6iBpTgwkzmGfp68hcKm8AER8s)
- [Caching with Spring](https://spring.io/guides/gs/caching)
- [Spring Data Redis](https://www.baeldung.com/spring-data-redis-tutorial)
- [Redis Docs](https://redis.io/docs/latest/)

## Tecnologias Utilizadas 🧶

- **Java 17**
- **Spring Boot 3**
  - Spring Data JPA
  - Spring Cache
- **Redis**
- **MySQL**
- **Lombok**

## Funcionalidades🚀

- CRUD completo de livros:
  - Criar, listar, atualizar e excluir livros.
- Cache implementado com Redis para otimizar as operações de leitura.
- Limpeza e invalidação de cache em operações de escrita (inserção, atualização e exclusão).

### Testes locais ✅
![first-select](https://github.com/user-attachments/assets/889ce993-3652-4978-a064-dd4527a6d7eb)
![get-atualizado-insert](https://github.com/user-attachments/assets/7c3f681e-9eb1-4aeb-b2b6-fd67fc081691)
![ATUALIZADO](https://github.com/user-attachments/assets/bb27d36f-9a02-4a1f-8e79-8757bfa846d6)
![ATUALIZAR-LIVRO](https://github.com/user-attachments/assets/85387e70-2f3f-4a10-8417-c11c7ed42849)
![cache](https://github.com/user-attachments/assets/31930fd6-c2f8-4480-9033-10beae684a2a)
![cacheEvict-updated](https://github.com/user-attachments/assets/e3caa66e-ba04-478a-8bfd-27638bd3e9da)
![caheEvic](https://github.com/user-attachments/assets/b53e5ddc-bc8b-4aff-9c2a-8574c3a49018)
![db-updated](https://github.com/user-attachments/assets/bb90daeb-d9b9-438c-9729-24812a343b15)
![insert](https://github.com/user-attachments/assets/e0c093a2-7f34-4525-8717-bb81c10726cf)
![no-update](https://github.com/user-attachments/assets/f825184b-24a5-4026-b7f9-604676ed4657)
![no-updated](https://github.com/user-attachments/assets/2a9501d7-017e-46d3-9f2d-f7bb8a6e5fed)
![updated-cache](https://github.com/user-attachments/assets/32e22b26-ba92-4887-9def-605f05ce650c)
![vou-atualizar](https://github.com/user-attachments/assets/fddf5a0a-f05a-4a28-ae5e-774db64f8087)


## Endpoints🔌

### Livros
- **GET** `/books`  
  Lista todos os livros (com cache ativo).
  
- **GET** `/books/{id}`  
  Retorna os detalhes de um livro específico.

- **POST** `/books`  
  Cria um novo livro.  
  **Exemplo de JSON:**
  ```json
  {
    "title": "Livro Exemplo",
    "author": "Autor Exemplo"
  }
  
- **PUT** /books/{id}
  
Atualiza as informações de um livro existente.

Exemplo de JSON:

````json
{
  "title": "Novo Título",
  "author": "Novo Autor"
}
````

- **DELETE** /books/{id}

Exclui um livro pelo ID.

### Como Executar o Projeto 🖥
1. Clone o repositório:

```bash
git clone https://github.com/seu-usuario/seu-repositorio.git
cd seu-repositorio
````


2. Configure o MySQL:
   
```sql
CREATE DATABASE eccomerce;
````

3. Crie a tabela no database no MySQL:

```sql
CREATE TABLE livro (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL
);

```

Atualize o arquivo application.yml ou application.properties com suas credenciais.

5. Suba o Redis:

6. Utilize Docker:
   
```bash
docker run --name redis-cache -p 6379:6379 -d redis
```
Compile e execute a aplicação:

```bash
./mvnw spring-boot:run
```

#### Teste no Postman ou similar:
#### Use os endpoints documentados acima para testar o sistema.

### Melhorias Futuras 🪛
- [ ] Implementar autenticação e autorização.
- [ ] Adicionar testes automatizados.
- [ ] Explorar estratégias avançadas de cache com TTL dinâmico.
