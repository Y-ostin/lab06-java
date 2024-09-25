/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author ASUS
 */
public class User {
    private int id; // ID del usuario
    private String username; // Nombre de usuario
    private String email; // Email del usuario

    // Constructor con todos los campos
    public User(int id, String username, String email) {
        this.id = id;
        this.username = username;
        this.email = email;
    }

    // Constructor vacío
    public User() {
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
