import React, { useEffect, useState } from 'react';
import './App.css';
import TicketRow from './components/TicketRow';
import NewTicket from './components/NewTicket';
import DestinationDropdown from './components/DestinationDropdown';
import { ToastContainer, toast } from 'react-toastify';

import 'react-toastify/dist/ReactToastify.css';

function App() {
  const [tickets, setTickets] = useState([]);
  const [newTickets, setNewTickets] = useState([]);
  const [newTicketMaxID, setNewTicketMaxID] = useState(0);
  const [columnSets, setColumnSets] = useState([]);
  const [showPopup, setShowPopup] = useState(false);
  const [selectedDestination, setSelectedDestination] = useState('');
  const [isNewTicketClicked, setIsNewTicketClicked] = useState(false);

  useEffect(() => {
    fetchTickets();
  }, []);

  function fetchTickets() {
    fetch('http://localhost:8080/tickets')
      .then((response) => response.json())
      .then((data) => {
        console.log(data); // Add this line to inspect the fetched data
        setTickets(data);
      })
      .catch((error) => {
        console.error('Error fetching tickets:', error);
      });
  }

  function deleteTicket(ticketId) {
    if (ticketId) {
      fetch(`http://localhost:8080/tickets/${ticketId}`, {
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json',
        },
      })
        .then((response) => {
          if (response.ok) {
            setTickets((oldValues) =>
              oldValues.filter((ticket) => ticket.id !== ticketId)
            );
            toast.success('Ticket deleted successfully!');
          } else {
            throw new Error('Failed to delete ticket');
          }
        })
        .catch((error) => {
          console.error('Error deleting ticket:', error);
        });
    }
  }

  function updateTicket(id, name, email, status) {
    const updatedTicket = {
      id: id,
      name: name,
      email: email,
      status: status,
    };

    fetch(`http://localhost:8080/tickets/${id}`, {
      method: 'PUT',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(updatedTicket),
    })
      .then((response) => response.json())
      .then(() => {
        setTickets((prevTickets) =>
          prevTickets.map((ticket) =>
            ticket.id === id
              ? { ...ticket, name: name, email: email, status: status }
              : ticket
          )
        );
        toast.success('Ticket updated successfully!');
      })
      .catch((error) => {
        console.error('Error updating ticket:', error);
      });
  }

  function addNewTicketInput() {
    setIsNewTicketClicked(true);
  }

  function deleteNewTicket(id) {
    setNewTickets((oldValues) => oldValues.filter((ticket) => ticket !== id));
  }

  function updateNewTicket(newTicket) {
    setTickets((prevTickets) => [...prevTickets, newTicket]);
  }

  function addColumnSet(columns) {
    setColumnSets((prevColumnSets) => [...prevColumnSets, columns.concat('destination')]);
  }



  function handleTicketPurchase() {
    setShowPopup(true);
    setTimeout(() => {
      setShowPopup(false);
    }, 20000);
  }

  function handleSelectDestination(destinationId) {
    setSelectedDestination(destinationId);
  }

  async function handleSubmitNewTicket(newTicket) {
    try {
      const savedTicketId = await saveTicketToDatabase(newTicket);
      newTicket.id = savedTicketId; // Set the ID on the newTicket object
      const updatedTickets = [...tickets, newTicket];
      setTickets(updatedTickets);
      setNewTicketMaxID((prevMaxID) => Math.max(prevMaxID, savedTicketId) + 1);
      setSelectedDestination('');
      setIsNewTicketClicked(false);
      toast.success('Ticket saved successfully!');
    } catch (error) {
      console.error('Error saving ticket:', error);
      toast.error('Error saving ticket');
    }
  }
  
  
  
  async function fetchTicket(ticketId) {
    try {
      const response = await fetch(`http://localhost:8080/tickets/${ticketId}`);
      if (response.ok) {
        const data = await response.json();
        return data;
      } else {
        throw new Error('Failed to fetch ticket');
      }
    } catch (error) {
      throw new Error('Failed to fetch ticket');
    }
  }
  
  
  async function saveTicketToDatabase(ticket) {
    const response = await fetch('http://localhost:8080/tickets', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(ticket),
    });
  
    if (response.ok) {
      return response.json();
    } else {
      throw new Error('Failed to save ticket');
    }
  }
  
  
  

  return (
    <div className="App">
      <header className="App-header">
        <p>Ticket Dashboard</p>
      </header>
      <div className="ticket-dashboard">
        <h2>Ticket Dashboard</h2>
        {tickets.map((ticket, index) => (
  <div key={`${ticket.id}-${index}`}>
    <TicketRow ticket={ticket} deleteTicket={deleteTicket} />
  </div>
))}


        {!isNewTicketClicked && (
          <button onClick={addNewTicketInput}>New Ticket</button>
        )}
        {isNewTicketClicked && (
          <div className="column">
            <NewTicket
              id={newTicketMaxID}
              deleteTicket={deleteNewTicket}
              updateNewTicket={updateNewTicket}
              addColumnSet={addColumnSet}
              handleTicketPurchase={handleTicketPurchase}
              onSubmit={handleSubmitNewTicket}
              onSelectDestination={handleSelectDestination}
              selectedDestination={selectedDestination}
            />
          </div>
        )}
      </div>
      {showPopup && (
        <div className="popup">
          <p>This is the pop-up message.</p>
        </div>
      )}
      <ToastContainer position="bottom-right" />
    </div>
  );
}

export default App;

