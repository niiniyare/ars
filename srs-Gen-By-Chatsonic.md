## first search
> Written by Chatsonic
A Software Requirements Specification (SRS) document is a formal written description of the requirements for an Airline Reservation System. This document should detail functional and non-functional requirements, as well as external and internal interfaces.

### Functional Requirements.

- Enable users to book flights, view available flights, and manage bookings
- Provide users with the ability to search for flights by destination, date and time, and number of passengers
- Allow users to select their own seats
- Store user information in secure databases
- Allow users to add additional services such as meals or transportation
- Offer payment gateway integration
- Provide real-time flight status updates
- Include a secure login system

### Non-functional Requirements.
- The system must be user-friendly and easy to navigate
- The system must be accessible from any device (desktop, mobile, etc.)
- The system must be able to handle large amounts of data
- The system must be designed with a high level of security
- The system must be able to process payments quickly and accurately

### External Interfaces.

- Payment gateway
- Airlines
- Travel agencies

### Internal Interfaces.

- Database
- User interface
- Administration interface.

## Second search
This Software Requirements Specification (SRS) document outlines the requirements for an Airline Reservation System. The system will provide users with the ability to search for flights, reserve seats, manage user accounts, and book flights. This document will provide a detailed description of the system’s functional and non-functional requirements.

1. Introduction
- Purpose
- Scope
- Glossary
- Overview

2. Overall Description
- Flight Details
- Airline Information
- Passenger Details
- Payment Details

3. Functional Requirements
- User-Level Facilities
- Screen Format and Menu Structure
- User-Friendly Interface
- Flight Scheduling
- Ticket Reservation
- Payment Processing
- Cancelation/Refund
- User Account Management

4. Non-Functional Requirements
- Usability
- Reliability
- Performance
- Security
- Hardware Limitations
- Control Functions

5. System Architecture
- Hardware Components
- Software Components
- Network Infrastructure

6. User Interfaces
- User Interface Design
- User Interface Components

7. System Testing
- System Testing Strategy
- System Testing Environment
- System Testing Methodology
- System Testing Procedures.

Written by Chatsonic

You can calculate the distance between two points (given the latitude/longitude of those points) using the haversine formula and writing JavaScript code. The code would look like this: 

// Haversine Formula
function getDistance(lat1, lon1, lat2, lon2) {
	var R = 6371; // Radius of the earth in km
	var dLat = (lat2-lat1) * Math.PI / 180;  // deg2rad below
	var dLon = (lon2-lon1) * Math.PI / 180; 
	var a = 
		Math.sin(dLat/2) * Math.sin(dLat/2) +
		Math.cos(lat1 * Math.PI / 180 ) * Math.cos(lat2 * Math.PI / 180 ) * 
		Math.sin(dLon/2) * Math.sin(dLon/2); 
	var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a)); 
	var d = R * c; // Distance in km
	return d;
}.

Written by Chatsonic