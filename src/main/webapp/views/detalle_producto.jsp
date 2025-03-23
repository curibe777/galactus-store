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

<% Producto producto = (Producto) request.getAttribute("producto-detalle"); %>

	<div class="max-w-4xl mx-auto bg-white shadow-md rounded-lg p-6">
		<h1 class="text-xl font-bold text-gray-800"><%= producto.getNombre() %></h1>

		<div class="flex gap-6 mt-4">
			<div class="w-1/3">
				<img src="<%= producto.getImagenUrl() != null ? producto.getImagenUrl() : Constants.IMAGEN_PRODUCTO_DEFAULT %>" 
					alt="<%= producto.getNombre() %>" class="rounded-lg border border-gray-300 shadow-md">
			</div>

			<div class="w-2/3">
				<ul class="text-gray-700 space-y-2">
					<li><strong>Modelo:</strong> <%= producto.getModelo() %></li>
					<li><strong>Código Interno:</strong> <%= producto.getCodigoInterno() %></li>
					<li><strong>Garantía:</strong> <%= producto.getTiempoGarantiaMeses() %> meses</li>
					<li><strong>Precio:</strong> <span class="text-green-600 font-semibold">S/ <%= producto.getPrecio() %></span></li>
					<li><strong>Stock:</strong> <span class="text-red-500"><%= producto.getStock() %> unidades</span></li>
				</ul>
			</div>
		</div>

		<div class="mt-6">
			<h2 class="text-lg font-bold">Descripción del Producto</h2>
			<p class="text-gray-600 mt-2"><%= producto.getDescripcion() %></p>
		</div>
	</div>


</body>
</html>



