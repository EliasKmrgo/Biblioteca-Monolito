package co.edu.uptc.IngSoftware.monolito.biblioteca.service;

import java.util.List;
import org.springframework.stereotype.Service;
import co.edu.uptc.IngSoftware.monolito.biblioteca.domain.Editorial;
import co.edu.uptc.IngSoftware.monolito.biblioteca.repository.EditorialRepository;

@Service
public class EditorialService {
    private final EditorialRepository editorialRepository;

    public EditorialService(EditorialRepository editorialRepository){
        this.editorialRepository = editorialRepository;
    }

    public List<Editorial> buscarTodos(){
        return editorialRepository.findAll();
    }
}
