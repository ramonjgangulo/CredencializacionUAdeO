package sample;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.Button;

public class Controller
{
    @FXML Button btnAlumnos;
    @FXML Button btnDocentes;
    @FXML Button btnAdministrativos;
    public void selectEvent(ActionEvent e)
    {
        deselectEvent();
        Button boton = (Button)e.getSource();

        boton.getStyleClass().removeAll();
        boton.getStyleClass().add("side-button-selected");
    }
    private void deselectEvent()
    {
        btnAlumnos.getStyleClass().removeAll("side-button-selected");
        btnAlumnos.getStyleClass().add("side-button");
        btnDocentes.getStyleClass().removeAll("side-button-selected");
        btnDocentes.getStyleClass().add("side-button");
        btnAdministrativos.getStyleClass().removeAll("side-button-selected");
        btnAdministrativos.getStyleClass().add("side-button");
    }
}
