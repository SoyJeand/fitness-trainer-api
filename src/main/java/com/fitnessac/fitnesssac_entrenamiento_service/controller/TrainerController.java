package com.fitnessac.fitnesssac_entrenamiento_service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.fitnessac.fitnesssac_entrenamiento_service.entity.Trainer;
import com.fitnessac.fitnesssac_entrenamiento_service.repository.TrainerRepository;

import java.util.List;


// REST controller responsible for handling Trainer related API requests
@RestController
@RequestMapping("/api/trainers")
public class TrainerController {

    // Repository used to perform database operations for Trainer entities
    private final TrainerRepository trainerRepository;

    @Autowired
    public TrainerController(TrainerRepository trainerRepository) {
        this.trainerRepository = trainerRepository;
    }

    // Retrieves a list of all trainers
    @GetMapping
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    // Retrieves a trainer by its ID
    @GetMapping("/{id}")
    public ResponseEntity<Trainer> getTrainerById(@PathVariable Long id) {
        return trainerRepository.findById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    // Creates a new trainer
    @PostMapping
    public Trainer createTrainer(@RequestBody Trainer trainer) {
        return trainerRepository.save(trainer);
    }

    // Updates an existing trainer by ID
    @PutMapping("/{id}")
    public ResponseEntity<Trainer> updateTrainer(@PathVariable Long id, @RequestBody Trainer trainerDetails) {
        
        return trainerRepository.findById(id)
            .map(trainer -> {
                trainer.setNombre(trainerDetails.getNombre());
                trainer.setApellido(trainerDetails.getApellido());
                trainer.setEspecialidad(trainerDetails.getEspecialidad());
                trainer.setDisponible(trainerDetails.isDisponible());
                
                Trainer updatedTrainer = trainerRepository.save(trainer);
                return ResponseEntity.ok(updatedTrainer);
            })
            .orElse(ResponseEntity.notFound().build());
    }

    // Deletes a trainer by ID
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteTrainer(@PathVariable Long id) {
        if (trainerRepository.existsById(id)) {
            trainerRepository.deleteById(id);
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}