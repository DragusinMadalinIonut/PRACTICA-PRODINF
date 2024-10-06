package com.example.backend_data.service;

import com.example.backend_data.persistence.TicketEntity;
import com.example.backend_data.persistence.TicketRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TicketService {
    private final TicketRepository ticketRepository;
    private final ObjectMapper objectMapper;

    @Autowired
    public TicketService(TicketRepository ticketRepository, ObjectMapper objectMapper) {
        this.ticketRepository = ticketRepository;
        this.objectMapper = objectMapper;
    }

    public List<TicketEntity> getAllTickets() {
        return ticketRepository.findAll();
    }

    public TicketEntity getTicketEntityById(Integer id) {
        return ticketRepository.findById(id).orElse(null);
    }

    public Integer insertNewTicket(TicketEntity ticket) {
        try {
            TicketEntity savedTicket = ticketRepository.save(ticket);
            return savedTicket.getId();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }




    public Integer updateTicket(Integer id, String ticketJson) {
        try {
            TicketEntity ticketFromJson = objectMapper.readValue(ticketJson, TicketEntity.class);
            Optional<TicketEntity> existingTicket = ticketRepository.findById(id);
            if (existingTicket.isPresent()) {
                TicketEntity ticketToBeUpdated = existingTicket.get();
                ticketToBeUpdated.setName(ticketFromJson.getName());
                ticketToBeUpdated.setEmail(ticketFromJson.getEmail());
                ticketToBeUpdated.setStatus(ticketFromJson.getStatus());

                TicketEntity updatedTicket = ticketRepository.save(ticketToBeUpdated);
                return updatedTicket.getId();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Integer deleteTicket(Integer id) {
        Optional<TicketEntity> ticketToBeDeleted = ticketRepository.findById(id);
        if (ticketToBeDeleted.isPresent()) {
            ticketRepository.deleteById(id);
            return id;
        }
        return null;
    }
}
