package com.example.backend_data.controller;
import org.springframework.http.HttpStatus;

import com.example.backend_data.persistence.DestinationEntity;
import com.example.backend_data.service.DestinationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/destinations")
@CrossOrigin(origins = "http://localhost:3000")
public class DestinationController {

    private final DestinationService destinationService;

    @Autowired
    public DestinationController(DestinationService destinationService) {
        this.destinationService = destinationService;
    }

    @GetMapping
    public ResponseEntity<List<DestinationEntity>> getAllDestinations() {
        List<DestinationEntity> destinations = destinationService.getAllDestinations();
        if (destinations.isEmpty()) {
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.ok(destinations);
        }
    }

    @GetMapping("/{id}")
    public ResponseEntity<DestinationEntity> getDestinationById(@PathVariable Long id) {
        Optional<DestinationEntity> destinationOptional = destinationService.getDestinationById(id);
        return destinationOptional
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    @PostMapping
    public ResponseEntity<DestinationEntity> createDestination(@RequestBody DestinationEntity destination) {
        DestinationEntity createdDestination = destinationService.createDestination(destination);
        return ResponseEntity.ok(createdDestination);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteDestination(@PathVariable Long id) {
        destinationService.deleteDestination(id);
        return ResponseEntity.noContent().build();
    }

    // Exception Handling

    @ExceptionHandler(Exception.class)
    public ResponseEntity<String> handleException(Exception e) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred: " + e.getMessage());
    }
}
