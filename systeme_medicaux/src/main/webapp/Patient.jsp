<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.systemmedicaux.model.Patient" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gestion des Patients</title>
</head>
<body>
    <h2>Liste des Patients</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Email</th>
            <th>Téléphone</th>
        </tr>
        <%
            List<Patient> patients = (List<Patient>) request.getAttribute("patients");
            if (patients != null) {
                for (Patient p : patients) {
        %>
        <tr>
            <td><%= p.getId() %></td>
            <td><%= p.getNom() %></td>
            <td><%= p.getEmail() %></td>
            <td><%= p.getTelephone() %></td>
        </tr>
        <% 
                }
            } 
        %>
    </table>

    <h2>Ajouter un Patient</h2>
    <form action="patients" method="post">
        <label>Nom :</label>
        <input type="text" name="nom" required>
        <br>
        <label>Email :</label>
        <input type="email" name="email" required>
        <br>
        <label>Téléphone :</label>
        <input type="text" name="telephone" required>
        <br>
        <input type="submit" value="Ajouter">
    </form>
</body>
</html>
