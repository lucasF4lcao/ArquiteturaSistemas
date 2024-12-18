package com.example.produto.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.produto.model.Produto;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, Long> {}
