package co.edu.uptc.IngSoftware.monolito.biblioteca.service;

import java.util.List;
import org.springframework.stereotype.Service;
import co.edu.uptc.IngSoftware.monolito.biblioteca.domain.Libro;
import co.edu.uptc.IngSoftware.monolito.biblioteca.repository.LibroRepository;

@Service
public class LibroService {

    private final LibroRepository libroRepository;

    public LibroService(LibroRepository libroRepository) {
        this.libroRepository = libroRepository;
    }

    public List<Libro> buscarDestacados(){
        return libroRepository.buscarTodos();
    }

    public List<Libro> buscarPorEditorial(int editorialId){
        return libroRepository.buscarPorEditorial(editorialId);
    }

    public List<Libro> buscar(String consulta){
        return libroRepository.buscar(consulta);
    }

    public Libro guardar(Libro libro){
        return libroRepository.save(libro);
    }
}