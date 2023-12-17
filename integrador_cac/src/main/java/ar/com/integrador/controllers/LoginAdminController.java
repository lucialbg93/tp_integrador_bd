package ar.com.integrador.controllers;


import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.integrador.dao.iOradorDAO;
import ar.com.integrador.dao.implement.OradorDAOMysqlImpl;
import ar.com.integrador.domain.Orador;

//un servelet es una clase que extiende de httpServlet
//http://localhost:8080/integrador//FindAllOradorController
@WebServlet("/LoginAdminController")

public class LoginAdminController  extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//capturo los parametros que viene en el request enviado por el form
		String nombre= req.getParameter("nombre");//name de input
		String password = req.getParameter("password");
	    String nombreGuardado = "Administrador";
		String passwordGuardado = "1234";
		if (nombre == null || "".equals(nombre)) {
			getServletContext().getRequestDispatcher("/FindAllOradorControllers").forward(req, resp);
		} 
		if (nombreGuardado == null && password == passwordGuardado) {
			// si el user y la contraseña se validan y estan ok te deja entrar al dashboard
			getServletContext().getRequestDispatcher("/DashboardOradorController").forward(req, resp);
		} 
		else {
			getServletContext().getRequestDispatcher("/FindAllOradorControllers").forward(req, resp);
		}
	}
}