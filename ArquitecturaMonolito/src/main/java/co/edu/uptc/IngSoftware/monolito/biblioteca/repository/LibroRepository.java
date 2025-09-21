package co.edu.uptc.IngSoftware.monolito.biblioteca.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import co.edu.uptc.IngSoftware.monolito.biblioteca.domain.Libro;

public interface LibroRepository extends JpaRepository<Libro, Integer> {

    @Query("select v from Libro v order by v.nombre")
    List<Libro> buscarTodos();
    
    @Query("select v from Libro v where v.editorial.id=?1 order by v.nombre")
    List<Libro> buscarPorEditorial(int editorialId);

    @Query("select v from Libro v where v.nombre like %?1% order by v.nombre")
    List<Libro> buscar(String consulta);
} 
