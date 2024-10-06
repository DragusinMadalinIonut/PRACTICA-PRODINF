import React, { useEffect, useState } from 'react';

export default function DestinationDropdown({ onSelectDestination }) {
  const [destinations, setDestinations] = useState([]);
  const [selectedDestination, setSelectedDestination] = useState('');

  useEffect(() => {
    fetchDestinations();
  }, []);

  function fetchDestinations() {
    fetch('http://localhost:8080/destinations')
      .then((response) => response.json())
      .then((data) => {
        setDestinations(data);
      })
      .catch((error) => {
        console.error('Error fetching destinations:', error);
      });
  }

  function handleDestinationChange(event) {
    const destinationId = event.target.value;
    setSelectedDestination(destinationId);
    onSelectDestination(destinationId);
  }

  return (
    <select value={selectedDestination} onChange={handleDestinationChange}>
      <option value="">Select Destination</option>
      {destinations.map((destination) => (
        <option key={destination.id} value={destination.id}>
          {destination.name}
        </option>
      ))}
    </select>
  );
}
