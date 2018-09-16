/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mx.unam.ciencias.is.controlador;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author jonh
 */
@Controller 
public class ControladorIndex {
    
    
     /**
      * Metodo que responde a la peticion raiz
      * @return el nombre del jsp de inicio
      */
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String index(){
        return "index";
    
    }
    @RequestMapping(value="/peticion1", method = RequestMethod.GET)
    public void peticion1(HttpServletRequest request){
        String parametro = request.getParameter("parametro");
        System.out.println("La peticion1 es: =================>"+parametro);
    
    }
    
    @RequestMapping(value="/peticion2", method = RequestMethod.GET)
    public ModelAndView peticion2(HttpServletRequest request,ModelMap model){
        String parametro = request.getParameter("parametro");
        System.out.println("La peticion2 es: =================>"+parametro);
        model.addAttribute("parametro", parametro);
        return new ModelAndView("index",model);
    
    }
    
    @RequestMapping(value="/peticion3", method = RequestMethod.GET)
    public ModelAndView peticion3(HttpServletRequest request,ModelMap model){
        String parametro = request.getParameter("param");
        System.out.println("La peticion3 es: =================>"+parametro);
        model.addAttribute("parametro", parametro);
        return new ModelAndView("index",model);
    
    }
    
    @RequestMapping(value="/iniciar_sesion", method = RequestMethod.GET)
    public ModelAndView iniciar_sesion(HttpServletRequest request,ModelMap model){
        HttpSession objSesion = request.getSession(true); 
        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");
        objSesion.setAttribute("usuario", correo );
        System.out.println("La peticion3 es: =================>"+correo + " " + contrasena);
        System.out.println("Y la sesion " + (String)objSesion.getAttribute("usuario"));
        model.addAttribute("sesion", (String)objSesion.getAttribute("usuario"));
        return new ModelAndView("index",model);
    
    }
    @RequestMapping(value="/cerrar_sesion", method = RequestMethod.GET)
    public ModelAndView cerrar_sesion(HttpServletRequest request,ModelMap model){
        HttpSession objSesion = request.getSession(true); 
        objSesion.removeAttribute("usuario");
        return new ModelAndView("index",model);
    
    }
}
