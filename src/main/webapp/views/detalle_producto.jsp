<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="models.Producto" %>
<%@ page import= "shared.Constants" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>GALACTUS STORE | SISE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<script src="https://unpkg.com/@tailwindcss/browser@4"></script>
</head>
<body>

<%
    Producto producto = (Producto) request.getAttribute("producto-detalle");
    if (producto == null) {
%>
    <p style="color: red;">Error: No se encontró el producto.</p>
<%
    } else {
%>
  	  <header class="flex gap-4 bg-green-600 justify-center h-[50px] items-center">
        <a href="/galactus-store" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer">Inicio</a>
        <a href="/galactus-store/categorias" class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer border border-white border-solid">Categorías</a>
        <a class="h-auto text-white hover:bg-green-700 p-2 rounded-md cursor-pointer">Marcas</a>
    </header>
    
    
    <main class="p-4">
        <div class="max-w-4xl mx-auto p-4 bg-white shadow-md rounded-md">
            <h1 class="text-2xl font-bold text-gray-800"><%= producto.getNombre() %></h1>

            <div class="flex flex-col md:flex-row gap-4">
                <img class="rounded-md w-1/3" src="<%= producto.getImagenUrl() != null ? producto.getImagenUrl() : Constants.IMAGEN_PRODUCTO_DEFAULT %>" alt="<%= producto.getNombre() %>">

                <div class="flex-1">
                    <p><strong>Modelo:</strong> <%= producto.getModelo() %></p>
                    <p><strong>Código Interno:</strong> <%= producto.getCodigoInterno() %></p>
                    <p><strong>Garantía:</strong> <%= producto.getTiempoGarantiaMeses() %> meses</p>
                    <p><strong>Precio:</strong> <span class="text-blue-600 font-bold">S/ <%= producto.getPrecio() %></span></p>
                    <p><strong>Stock:</strong> <%= producto.getStock() %> unidades</p>
                </div>
            </div>

            <div class="mt-4">
                <h2 class="text-xl font-semibold">Descripción del Producto</h2>
                <p class="text-gray-700"><%= producto.getDescripcion() %></p>
            </div>
        </div>
    </main>
    
    
  	
  	
  	



</body>
</html>

<%
    }
%>

