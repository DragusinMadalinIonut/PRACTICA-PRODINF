import React from 'react';
import DatePicker from 'react-datepicker';
import 'react-datepicker/dist/react-datepicker.css';
import DestinationDropdown from './DestinationDropdown';

function NewTicket({
  id,
  deleteTicket,
  updateNewTicket,
  addColumnSet,
  handleTicketPurchase,
  onSubmit,
  onSelectDestination,
  selectedDestination,
}) {
  const [name, setName] = React.useState('');
  const [email, setEmail] = React.useState('');
  const [status, setStatus] = React.useState('');
  const [selectedDate, setSelectedDate] = React.useState(null);

  function handleSubmit() {
    const newTicket = {
      id: id,
      name: name,
      email: email,
      status: status,
      destination: selectedDestination,
      date: selectedDate,
    };
  
    onSubmit(newTicket);
    resetForm();
  }
  
  
  function resetForm() {
    setName('');
    setEmail('');
    setStatus('');
    setSelectedDate(null);
  }

  return (
    <div className="new-ticket">
      <input
        type="text"
        placeholder="Name"
        value={name}
        onChange={(e) => setName(e.target.value)}
      />
      <input
        type="text"
        placeholder="Email"
        value={email}
        onChange={(e) => setEmail(e.target.value)}
      />
      <input
        type="text"
        placeholder="Status"
        value={status}
        onChange={(e) => setStatus(e.target.value)}
      />
      <div className="column">
        <DestinationDropdown onSelectDestination={onSelectDestination} />
      </div>
      <div className="column">
        <DatePicker
          selected={selectedDate}
          onChange={(date) => setSelectedDate(date)}
          placeholderText="Select Date"
          dateFormat="dd/MM/yyyy"
          isClearable
        />
      </div>
      <button onClick={handleSubmit}>Submit</button>
    </div>
  );
}

export default NewTicket;
