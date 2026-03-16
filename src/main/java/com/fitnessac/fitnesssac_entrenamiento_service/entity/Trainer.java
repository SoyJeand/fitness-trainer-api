package com.fitnessac.fitnesssac_entrenamiento_service.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Trainer")
public class Trainer {

	// Trainer entity attributes mapped to the database table columns
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name = "id_trainer")
	 private int id;
	
	 @Column(name = "nombre")
	 private String nombre;
	
	 @Column(name = "apellido")
	 private String apellido;
	
	 @Column(name = "especialidad")
	 private String especialidad;
	
	 @Column(name = "disponible")
	 private boolean disponible;



	// Getters and Setters for Trainer entity
	
	 public int getId() {
	     return id;
	 }
	 public void setId(int id) {
	     this.id = id;
	 }
	
	 public String getNombre() {
	     return nombre;
	 }
	 public void setNombre(String nombre) {
	     this.nombre = nombre;
	 }
	
	 public String getApellido() {
	     return apellido;
	 }
	 public void setApellido(String apellido) {
	     this.apellido = apellido;
	 }


	 public String getEspecialidad() {
	     return especialidad;
	 }
	 public void setEspecialidad(String especialidad) {
	     this.especialidad = especialidad;
	 }
	
	 public boolean isDisponible() {
	     return disponible;
	 }
	 public void setDisponible(boolean disponible) {
	     this.disponible = disponible;
	 }
 
}
