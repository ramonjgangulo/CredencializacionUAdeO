package sample;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application {
    Scene Sample;

    public void start(Stage stage) throws Exception{

        FXMLLoader loader = new FXMLLoader(getClass().getResource("sample.fxml"));
        Parent root = loader.load();
        
        Sample = new Scene(root);
        Sample.getStylesheets().addAll("bootstrap3.css", "Estilos.css");
        stage.setTitle("Sensor Credencializacion");
        stage.setScene(Sample);
        stage.show();
    }


    public static void main(String[] args) {
        launch(args);
    }
}
