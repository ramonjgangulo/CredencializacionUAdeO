package Controllers;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.FXMLLoader;
import javafx.scene.control.Button;
import javafx.scene.layout.AnchorPane;

import java.io.IOException;

public class Controller
{
    @FXML Button btnAlumnos;
    @FXML Button btnDocentes;
    @FXML Button btnAdministrativos;
    @FXML Button btnCredAlumnos;
    @FXML Button btnCredDocentes;
    @FXML Button btnCredAdministrativos;
    @FXML AnchorPane pnContenido;
    AnchorPane contAlumnos;
    public void selectEvent(ActionEvent e) throws IOException
    {
        deselectEvent();
        Button boton = (Button)e.getSource();

        boton.getStyleClass().removeAll();
        boton.getStyleClass().add("side-button-selected");
        if(boton == btnAlumnos)
        {
            cargarAlumnos();
            return;
        }
    }
    private void deselectEvent()
    {
        btnAlumnos.getStyleClass().removeAll("side-button-selected");
        btnAlumnos.getStyleClass().add("side-button");
        btnDocentes.getStyleClass().removeAll("side-button-selected");
        btnDocentes.getStyleClass().add("side-button");
        btnAdministrativos.getStyleClass().removeAll("side-button-selected");
        btnAdministrativos.getStyleClass().add("side-button");
        btnCredAlumnos.getStyleClass().removeAll("side-button-selected");
        btnCredAlumnos.getStyleClass().add("side-button");
        btnCredDocentes.getStyleClass().removeAll("side-button-selected");
        btnCredDocentes.getStyleClass().add("side-button");
        btnCredAdministrativos.getStyleClass().removeAll("side-button-selected");
        btnCredAdministrativos.getStyleClass().add("side-button");
    }
    private void cargarAlumnos() throws IOException
    {
        if(contAlumnos==null)
            contAlumnos= FXMLLoader.load(getClass().getResource("/Views/Alumnos.fxml"));
        pnContenido.getChildren().setAll(contAlumnos);
    }
}
