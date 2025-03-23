package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Producto;
import models.Subcategoria;
import services.CategoriaService;
import services.ProductoService;
import services.impl.CategoriaServiceImpl;
import services.impl.ProductoServiceImpl;

@WebServlet("/detalle_producto")
public class ProductoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final ProductoService productoService;
       
    public ProductoServlet() {
        super();
        productoService = new ProductoServiceImpl();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Integer idProducto = 4;

        
        Producto producto = productoService.obtenerProductoPorId(idProducto);

       
        request.setAttribute("producto", producto);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/detalle_producto.jsp");
        dispatcher.forward(request, response);
	}


}
