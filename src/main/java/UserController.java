import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserController {
    // Datos de conexión a la base de datos
    private String jdbcURL = "jdbc:mysql://localhost:3306/lab06";
    private String jdbcUsername = "root"; // Cambia esto si tienes un usuario diferente
    private String jdbcPassword = ""; // Cambia esto si tienes una contraseña

    // Método para obtener la lista de usuarios desde la base de datos
    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();

        try {
            // Establecer la conexión con la base de datos
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            
            // Crear la consulta SQL
            String sql = "SELECT * FROM students";
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sql);

            // Recorrer los resultados y añadirlos a la lista de usuarios
            while (resultSet.next()) {
                User user = new User();
                user.setId(resultSet.getInt("id")); // Ajusta el nombre del campo según tu base de datos
                user.setUsername(resultSet.getString("First_Name")); // Ajusta estos nombres de campos según tu estructura
                user.setEmail(resultSet.getString("Last_Name")); // Supón que aquí guardas el email
                userList.add(user);
            }

            // Cerrar los recursos
            resultSet.close();
            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace(); // Manejo simple de excepciones
        }

        return userList;
    }

    // Método para agregar usuarios (opcional si quieres mantenerlo, pero solo funciona en memoria)
    public void addUser(String username, String email) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
    }
}
