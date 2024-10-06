import React from 'react';

function TicketRow({ ticket, deleteTicket, updateTicket }) {
  const { id, name, email, status, destination, date } = ticket;

  return (
    <div className="TicketRow">
      <div>
        <strong>Ticket ID:</strong> {id}
      </div>
      <div>
        <strong>Name:</strong> {name}
      </div>
      <div>
        <strong>Email:</strong> {email}
      </div>
      <div>
        <strong>Status:</strong> {status}
      </div>
      <div>
        <strong>Destination:</strong> {destination}
      </div>
      <div>
        <strong>Date:</strong> {date ? date.toDateString() : 'No date available'}
      </div>
      <div>
        <button onClick={() => deleteTicket(ticket.id)}>Delete</button>
        <button onClick={() => updateTicket(ticket)}>Update</button>
      </div>
    </div>
  );
}

export default TicketRow;
