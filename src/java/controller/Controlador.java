package controller;

import config.Conexion;
import entidad.Persona;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion conexion = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(conexion.Conectar());
    ModelAndView modelAndView = new ModelAndView();
    List datos;
    int id;

    @RequestMapping("index.htm")
    public ModelAndView listar() {
        String sql = "select * from persona";
        datos = this.jdbcTemplate.queryForList(sql);
        modelAndView.addObject("lista", datos);
        modelAndView.setViewName("index");
        return modelAndView;
    }
    
      @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView agregar(){
        modelAndView.addObject(new Persona());
        modelAndView.setViewName("agregar");
        return modelAndView;
    }
    
     @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView agregar(Persona persona){
        String sql = "insert into persona (Nombres, Correo, Telefono) values (?,?,?)";
        this.jdbcTemplate.update(sql, persona.getNombre(), persona.getCorreo(), persona.getTelefono());
        return new ModelAndView("redirect:/index.htm");
    }
    
    @RequestMapping(value="editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from persona where id = " + id;
        datos = this.jdbcTemplate.queryForList(sql);
        modelAndView.addObject("lista", datos);
        modelAndView.setViewName("editar");
        return modelAndView;
    }
    
    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView editar(Persona persona){
        String sql = "update persona set Nombres=?, Correo=?, Telefono=? where id=?";
        this.jdbcTemplate.update(sql, persona.getNombre(), persona.getCorreo(), persona.getTelefono(), persona.getId());
        return new ModelAndView("redirect:/index.htm");
    }
    
     @RequestMapping(value = "eliminar.htm", method = RequestMethod.GET)
    public ModelAndView eliminar(HttpServletRequest request){
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from persona where id = " + id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }

}
