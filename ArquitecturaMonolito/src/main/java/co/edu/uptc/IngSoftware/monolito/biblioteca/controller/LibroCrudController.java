package co.edu.uptc.IngSoftware.monolito.biblioteca.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import co.edu.uptc.IngSoftware.monolito.biblioteca.domain.Libro;
import co.edu.uptc.IngSoftware.monolito.biblioteca.service.EditorialService;
import co.edu.uptc.IngSoftware.monolito.biblioteca.service.LibroService;

@Controller
public class LibroCrudController {
    private final EditorialService editorialService;
    private final LibroService libroService;

    public LibroCrudController(EditorialService editorialService, LibroService libroService){
        this.editorialService = editorialService;
        this.libroService = libroService;
    }

    @RequestMapping("/libros/crear")
    public String mostrarFormAlta(Model model) {
        model.addAttribute("editoriales", editorialService.buscarTodos());
        model.addAttribute("libro", new Libro());
        return "formLibro";
    }

    @PostMapping("/libros/guardar")
    public String guardar(Libro libro) {
        libroService.guardar(libro);
        return "redirect:/";
    }
}
