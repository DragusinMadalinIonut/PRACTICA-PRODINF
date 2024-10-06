package com.example.backend_data.controller;

import com.example.backend_data.persistence.TicketEntity;
import com.example.backend_data.service.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class TicketsController {

    private final TicketService ticketService;

    @Autowired
    public TicketsController(TicketService ticketService) {
        this.ticketService = ticketService;
    }

    @GetMapping("/ticket")
    public ResponseEntity<TicketEntity> getTicketById(@RequestParam Integer id) {
        TicketEntity ticket = ticketService.getTicketEntityById(id);
        if (ticket != null) {
            return ResponseEntity.ok(ticket);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/tickets")
    public List<TicketEntity> getAllTickets() {
        return ticketService.getAllTickets();
    }

    @PostMapping("/tickets")
    public ResponseEntity<Integer> addTicket(@RequestBody TicketEntity ticket) {
        try {
            Integer ticketId = ticketService.insertNewTicket(ticket);
            if (ticketId != null) {
                ticket.setId(ticketId); // Set the ID on the ticket object
                return ResponseEntity.ok(ticketId);
            } else {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }



    @PutMapping("/tickets/{id}")
    public ResponseEntity<Integer> updateTicket(@PathVariable Integer id, @RequestBody String requestBody) {
        Integer ticketId = ticketService.updateTicket(id, requestBody);
        HttpStatus status = (ticketId != null) ? HttpStatus.OK : HttpStatus.CONFLICT;
        return new ResponseEntity<>(ticketId, status);
    }

    @DeleteMapping("/tickets/{id}")
    public ResponseEntity<Integer> deleteTicket(@PathVariable Integer id) {
        Integer ticketId = ticketService.deleteTicket(id);
        HttpStatus status = (ticketId != null) ? HttpStatus.OK : HttpStatus.NOT_FOUND;
        return new ResponseEntity<>(ticketId, status);
    }
}
