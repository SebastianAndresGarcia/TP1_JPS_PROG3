/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Datos.ConfigHibernate;

/**
 *
 * @author hp
 */
public class GestorPersona extends Gestor{
    public GestorPersona() {
        sesion = ConfigHibernate.openSession();
    }
}
