package com.example.produto.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.produto.model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
}
