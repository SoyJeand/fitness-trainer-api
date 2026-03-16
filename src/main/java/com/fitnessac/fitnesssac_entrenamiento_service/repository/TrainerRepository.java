package com.fitnessac.fitnesssac_entrenamiento_service.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fitnessac.fitnesssac_entrenamiento_service.entity.Trainer;

import java.util.List;

@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Long> {

    // Finds trainers by specialty using a case-insensitive search
    List<Trainer> findByEspecialidadContainingIgnoreCase(String especialidad);
}