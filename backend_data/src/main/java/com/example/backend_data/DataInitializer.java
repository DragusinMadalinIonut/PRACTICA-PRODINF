package com.example.backend_data;

import com.example.backend_data.persistence.DestinationEntity;
import com.example.backend_data.persistence.DestinationRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer implements CommandLineRunner {

    private final DestinationRepository destinationRepository;
    private static final Logger LOGGER = LoggerFactory.getLogger(DataInitializer.class);

    @Autowired
    public DataInitializer(DestinationRepository destinationRepository) {
        this.destinationRepository = destinationRepository;
    }

    @Override
    public void run(String... args) throws Exception {
        if (destinationRepository.count() == 0) {
            LOGGER.debug("Initializing destinations...");
            initializeDestinations();
            LOGGER.debug("Destinations initialized.");
        }
    }

    private void initializeDestinations() {
        DestinationEntity destination1 = new DestinationEntity("Destination 1 Name", "Location 1", "Description 1");
        DestinationEntity destination2 = new DestinationEntity("Destination 2 Name", "Location 2", "Description 2");

        destinationRepository.save(destination1);
        destinationRepository.save(destination2);
    }
}
