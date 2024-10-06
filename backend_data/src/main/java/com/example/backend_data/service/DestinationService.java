package com.example.backend_data.service;

import com.example.backend_data.persistence.DestinationEntity;
import com.example.backend_data.persistence.DestinationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DestinationService {

    private final DestinationRepository destinationRepository;

    @Autowired
    public DestinationService(DestinationRepository destinationRepository) {
        this.destinationRepository = destinationRepository;
    }

    public List<DestinationEntity> getAllDestinations() {
        return destinationRepository.findAll();
    }

    public Optional<DestinationEntity> getDestinationById(Long id) {
        return destinationRepository.findById(id);
    }

    public DestinationEntity createDestination(DestinationEntity destination) {
        return destinationRepository.save(destination);
    }

    public void deleteDestination(Long id) {
        destinationRepository.deleteById(id);
    }
}

