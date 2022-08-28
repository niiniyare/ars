## **Software Requirements** **Specification** **for** **Airline Ticket Reservation.**

| Version       | Date              | Prepared by      | Approved |
|---------------|-------------------|------------------|----------|
| Version 1.0.1 | December 16, 2021 | Abdirahman Ahmed | Pending  |
|               |                   |                  |          |

# 1. Introduction

### 1.1 Purpose

This document lists the requirement specifications for an Airline Ticket Reservation System (**ATRS**). The document is subject the change as the project progresses. The given version of the document is the initial one. Further changes of the project will be recorded to the document.

#### 1.2 Document Conventions

The document is formatted according to IEEE standard.

#### 1.3 Intended Audience

The intended audience for this document consists of requirements engineers, software developers, designers, testers and project manager.

### 1.4 Product Scope

**Subject facet:** User Interface, Searching one-way flights, Searching round trip flights, Searching multiple destinations, Flight reservations, Reservation cancellation, Online payment, Request and response for reservation cancellation, Displaying warning messages.

**Usage facet:** Searching, Sorting of flights, Reservation of tickets, Managing existing reservation, Managing flight details, Keeping the flights up to date.

**IT facet:** Database, Web-based software system, AAS for logins, Performance maintenance. *Development facet:* Internal policy and culture of the airlines company should be taken under consideration.

### 1.5 Reference Documents

1.  [Lecture slides. Luke Paireepinart, David Keyes, Jingtao Liu, Frank Medjo and Seth Orell, Software](https://pdfcoffee.com/download/software-requirements-specification-for-airline-flight-booking-system-software-requirements-specification-for-airline-flight-booking-system-pdf-free.html)

2.  [Example of the final goal system](https://www.lemax.net/)

3.  [API functionalities AeroCRS](https://docs.aerocrs.com/reference/getairlines-1)

4.  [ARS Overview](https://fasrsmall634.weebly.com/disadvantages-of-manual-airline-reservation-system.html)

5.  [AirGateway’s NDC JSON API](https://dev-guides.airgateway.net/)

6.  [Best Travelport Universal API wrapper](https://github.com/Travelport-Ukraine/uapi-json)

### 1.6 Overview

The remaining part of the specification document is organized as follows.

-   **Section 2** defines overall description of the system which defines product perspectives and functions, use-case diagrams, classes and characteristics of involved users, the environment that the system is going to be deployed, constraints on design and implementation of the system, user documentation, assumptions and dependencies.

-   **Section 3** focuses on requirements and goal modelling. Strategic dependency model, model of software-intensive system, goal and agent responsibility model are used to model goals, while class diagram, state models and sequence diagram are constructed to model requirements.

-   **Section 4** contains all the specific requirements such as functional requirements, performance requirements and external interface requirements, which in turn includes user, software, hardware and communication interface requirements. Attributes of the software system and non-functional requirements are also specified in this section. Solution-oriented requirements extracted from requirements modelling part are documented in this section. Prioritization and traceability of requirements are also included in **Section 4**.

# 2. Overall Description

### 2.1 Product Perspective

**Airline Ticketing reservation systems (ARS)** are part of the so-called passenger service systems (PSS), which are applications supporting the direct contact with the passenger. Airline reservation systems incorporate airline schedules, fare tariffs, passenger reservations and ticket records.An airline's direct distribution works within their own reservation system, as well as pushing out information to the GDS. ARS eventually evolved into the computer reservations system (CRS). A computer reservation system is used for the reservations of a particular airline and interfaces with a global distribution system (GDS) which supports travel agencies and other distribution channels in making reservations for most major airlines in a single system

**ATRS** is a direct distribution channel are consumers who use the internet or mobile applications to make their own reservations. Travel agencies and other indirect distribution channels access the same GDS as those accessed by the airline reservation systems.

Although the existing systems were performing the basic functions of the airlines and doing their best but not yet those who can meet the demand, There are a few systematic challenges that airlines are still facing that can be overcome.

currentlly systems can make schedules, search availability, book flights, Ticketing, refund, change date and arrenge departure basic. design of this **ATRS** come to do this jobs easy and smooth plus add missing Features that are needed.

-   \[ \] list current systems drawbacks.

The new system aims to overcome the above-mentioned drawbacks of the existing system. It will allow users to make reservations according their needs from different parts of the world without leaving their places. Furthermore, it will reduce the workload of the employees who are responsible to make reservations at the office.

The system allows customers to check the availability of flights for specific dates and routes, get information about durations of available flights. It also allows customers to check the prices and the things that are included in the ticket such as baggage allowance, meal and etc. and booking the ticket. Administrator can modify, remove existing flights, also add new flights to the system. Furthermore, administrator can see customer requests about cancellation of bookings, and decide whether to accept and reject them.

### 2.2 Product Functions

The system will have 10 functionalities for customers and administrators and they are listed below.

#### 2.2.1 Search for flights

Description: Using this function a customer is able to search for one-way, round-trip and multiple destination flights by choosing specific dates and destinations.

#### 2.2.2 Specify passengers

Description: With the help of this function customer selects the number of passengers and their category, either adult, child or infant.

#### 2.2.3 Sort flights

Description: Regarding to this functions, customer sorts flights either by price or duration of the flight.

#### 2.2.4 Book flights

Description: This function allows customer to book flights by choosing ticket types and processing online payment.

#### 2.2.5 Request cancellation

Description: This function indicates that customer can request the cancellation of the reserved ticket.

**2.2.6 Add new flights**

Description: The function grants administrator the privilege of adding new flights to the system.

**2.2.7 Modify flight details**

Description: Using this functionality administrator can modify the details of the existing flights.

#### 2.2.8 Remove flights

Description: With the help of this function administrator removes the flights from the system that are cancelled for whatever reason.

#### 2.2.9 See cancellation requests

Description: This functionality allows administrator to overview the cancellation requests of customers, and approve or reject them.

**2.2.10 See booking details**

Description: This functionality enables administrator to view the customers' booking details.

### 2.3 Use-case Diagram

**Description:** In the use case diagram given below, we have displayed how our users interact with the system to accomplish their goals and responsibilities. Here in our diagram we have 4 actors (Customer, Administrator, Support Staff, Bank), 3 of which are the main users (Customer, Administrator, Support Staff). In every use case mentioned in the diagram, the actions of the users are described, and how these use cases are related to one another is represented by the help of arrows. In our Use case diagram all functionalities of the system are displayed. Customer can search for flights based on dates and destination, flights being one-way or round-trip, sort the displayed flights according to price or duration, specify the passengers (how many adults, children or infants), request cancellation, book flight, choose the ticket type and proceed with the payment. The payment is processed by the Bank. Another actor, Administrator, is responsible for adding new flights, modifying flight details and removing flights if needed, see the cancellation request, approve or deny them and see booking details. Our final actor, Support Staff, is responsible for maintenance of the system, ensuring the security of the system (by creating predefined users and maintaining AAS), safety of the system (by restoring and recovering data and assuring data integrity) and reliability of the system (by maintaining SLA).

`<img src="media/image1.jpg" style="width:7.26042in;height:7.625in" />`{=html}

**Figure 1.** Use case diagram

```{=html}
<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 28%" />
<col style="width: 22%" />
<col style="width: 28%" />
</colgroup>
<thead>
<tr class="header">
<th>Use Case ID:</th>
<th>01</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>
Use Case Name:
</p>
</blockquote>
</td>
<td>Search for flights</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Created By:</td>
<td>Abdirahman Ahmed</td>
<td>Last Updated By:</td>
<td></td>
</tr>
<tr class="odd">
<td>Date Created:</td>
<td>9/11/2021</td>
<td><blockquote>
<p>
Date Last Updated:
</p>
</blockquote>
</td>
<td>9/11/2021</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<thead>
<tr class="header">
<th>Actor:</th>
<th>Customer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Description:</td>
<td>Customer searches for the flights on specific dates</td>
</tr>
<tr class="even">
<td>Frequency of Use:</td>
<td>1</td>
</tr>
<tr class="odd">
<td>Preconditions:</td>
<td>Customer should have internet connection and be able to access to the website</td>
</tr>
<tr class="even">
<td>Post conditions:</td>
<td>System displays the list of all available flights on a chosen date</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
Normal Course of Events:
</p>
</blockquote>
</td>
<td><ol type="1">
<li><p>
Customer enters airline's website
</p>
</li>
<li><p>
Customer chooses the specific date
</p>
</li>
<li><p>
System displays the flights on a given date
</p>
</li>
</ol>
</td>
</tr>
<tr class="even">
<td>Alternative Courses:</td>
<td>NA</td>
</tr>
<tr class="odd">
<td>Exceptions:</td>
<td>System may not be available</td>
</tr>
<tr class="even">
<td>Includes:</td>
<td>Search for one-way, Search for round-trip, search for multiple destinations.</td>
</tr>
<tr class="odd">
<td>Assumptions:</td>
<td>System is available</td>
</tr>
<tr class="even">
<td>Notes and Issues:</td>
<td>NA</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 20%" />
<col style="width: 23%" />
<col style="width: 36%" />
</colgroup>
<thead>
<tr class="header">
<th>Use Case ID:</th>
<th>12</th>
<th colspan="2"></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>
Use Case Name:
</p>
</blockquote>
</td>
<td>Sort flights</td>
<td colspan="2"></td>
</tr>
<tr class="even">
<td>Created By:</td>
<td>Abdirahman Ahmed</td>
<td>Last Updated By:</td>
<td></td>
</tr>
<tr class="odd">
<td>Date Created:</td>
<td>10/11/2021</td>
<td>Date Last Updated:</td>
<td>10/11/2021</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 23%" />
<col style="width: 76%" />
</colgroup>
<thead>
<tr class="header">
<th>Actor:</th>
<th>Customer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Description:</td>
<td>Customer wants to sort flights.</td>
</tr>
<tr class="even">
<td>Normal flow:</td>
<td><ol type="1">
<li><p>
Customer enters airline's website
</p>
</li>
<li><p>
Customer searches for flights
</p>
</li>
<li><p>
System displays the list of available flights
</p>
</li>
<li><p>
Customer chooses to sort the list of flights either by price or the duration of flight.
</p>
</li>
<li><p>
System displays the sorted list of flights
</p>
</li>
</ol>
</td>
</tr>
<tr class="odd">
<td>Preconditions:</td>
<td>System has displayed the list of available flights based on customer's query</td>
</tr>
<tr class="even">
<td>Post conditions:</td>
<td>Customer is displayed the sorted list of flights according to his/her sorting criteria</td>
</tr>
<tr class="odd">
<td>Frequency of Use:</td>
<td>1</td>
</tr>
<tr class="even">
<td>Normal Course of Events:</td>
<td>Customer chooses to sort the flights according to price or flight duration on the system.</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
Alternative Courses:
</p>
</blockquote>
</td>
<td>NA</td>
</tr>
<tr class="even">
<td>Exceptions:</td>
<td>System may not be available</td>
</tr>
<tr class="odd">
<td>Includes:</td>
<td>Sort by price, Sort by duration</td>
</tr>
<tr class="even">
<td>Assumptions:</td>
<td>System is available, There are available flights according to customer's search criteria</td>
</tr>
<tr class="odd">
<td>Notes and Issues:</td>
<td>NA</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 28%" />
<col style="width: 22%" />
<col style="width: 28%" />
</colgroup>
<thead>
<tr class="header">
<th>Use Case ID:</th>
<th colspan="3">20</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>
Use Case Name:
</p>
</blockquote>
</td>
<td>Payment</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Created By:</td>
<td>Abdirahman Ahmed</td>
<td>Last Updated By:</td>
<td></td>
</tr>
<tr class="odd">
<td>Date Created:</td>
<td>10/11/2021</td>
<td><blockquote>
<p>
Date Last Updated:
</p>
</blockquote>
</td>
<td>10/11/2021</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<thead>
<tr class="header">
<th>Actor:</th>
<th>Customer</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Description:</td>
<td>Customer proceeds with the payment of the booked flight.</td>
</tr>
<tr class="even">
<td>Frequency of Use:</td>
<td>1</td>
</tr>
<tr class="odd">
<td>Preconditions:</td>
<td>Customer has selected the available flight and ticket type of his/her choice</td>
</tr>
<tr class="even">
<td>Post conditions:</td>
<td>Customer has booked the flight and paid for the ticket(s)</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
Normal Course of Events:
</p>
</blockquote>
</td>
<td><ol type="1">
<li><p>
Customer clicks 'Book Now' button
</p>
</li>
<li><p>
System asks the customer to enter card details as default
</p>
</li>
<li><p>
Customer enters the card details
</p>
</li>
<li><p>
Customer clicks 'Make Payment' button
</p>
</li>
<li><p>
System handles the payment
</p>
</li>
<li><p>
System displays the confirmation of the payment
</p>
</li>
<li><p>
System sends an invoice to customer's email
</p>
</li>
</ol>
</td>
</tr>
<tr class="even">
<td>Alternative Courses:</td>
<td>Customer chooses to pay with PayPal.</td>
</tr>
<tr class="odd">
<td>Exceptions:</td>
<td>System may not be available.</td>
</tr>
<tr class="even">
<td>Includes:</td>
<td>Manually by card, PayPal</td>
</tr>
<tr class="odd">
<td>Assumptions:</td>
<td>System is available, Customer has enough funds for the payment</td>
</tr>
<tr class="even">
<td>Notes and Issues:</td>
<td>NA</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 20%" />
<col style="width: 28%" />
<col style="width: 22%" />
<col style="width: 28%" />
</colgroup>
<thead>
<tr class="header">
<th>Use Case ID:</th>
<th colspan="3">25</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>
Use Case Name:
</p>
</blockquote>
</td>
<td>Adding new flights.</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>Created By:</td>
<td>Abdirahman Ahmed</td>
<td><blockquote>
<p>
Last Updated By:
</p>
</blockquote>
</td>
<td></td>
</tr>
<tr class="odd">
<td>Date Created:</td>
<td>10/11/2021</td>
<td><blockquote>
<p>
Date Last Updated:
</p>
</blockquote>
</td>
<td>10/11/2021</td>
</tr>
</tbody>
</table>
```
```{=html}
<table>
<colgroup>
<col style="width: 31%" />
<col style="width: 68%" />
</colgroup>
<thead>
<tr class="header">
<th>Actor:</th>
<th>Administrator</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Description:</td>
<td>Administrator adds new flights to the system.</td>
</tr>
<tr class="even">
<td>Normal flow:</td>
<td><ol type="1">
<li><p>
Administrator enters the website.
</p>
</li>
<li><p>
Administrator logs in to the admin panel.
</p>
</li>
<li><p>
Administrator adds details about new flights to the system.
</p>
</li>
<li><p>
Administrator submits the addition of the new flights to the system
</p>
</li>
</ol>
</td>
</tr>
<tr class="odd">
<td>Preconditions:</td>
<td>Administrator successfully logs in to the system</td>
</tr>
<tr class="even">
<td>Post conditions:</td>
<td>The information about new flight can be displayed for respective queries</td>
</tr>
<tr class="odd">
<td>Frequency of Use:</td>
<td>Once in 6 hours.</td>
</tr>
<tr class="even">
<td><p>
Normal Course of
</p>
<p>
Events:
</p>
</td>
<td>Administrator logs in to the system and adds/modifies flights at the system.</td>
</tr>
<tr class="odd">
<td>Alternative Courses:</td>
<td>NA</td>
</tr>
<tr class="even">
<td>Exceptions:</td>
<td>System may not be available, Administrator may fail to log in.</td>
</tr>
<tr class="odd">
<td>Includes:</td>
<td>NA</td>
</tr>
<tr class="even">
<td>Assumptions:</td>
<td>Administrator is able to access the system.</td>
</tr>
<tr class="odd">
<td>Notes and Issues:</td>
<td>NA</td>
</tr>
</tbody>
</table>
```
### 2.4 User Classes and Characteristics

The system users are divided into three categories: administrators, customers and support staff. Administrators should be trained and have a knowledge about using this application. On the other hand, customers do not need a training or a background knowledge. Support staff consist of specialists who have good analytical and problem solving skills, up-to-date technical knowledge, good interpersonal and customer care skills.

### 2.5 User Interests

Customers' interests are getting information about available flights of specific dates and routes, knowing their durations, checking the prices of the tickets. They are also interested in what are included in different ticket types in terms of whether the ticket is refundable, include meal, what is the baggage limit for each type of ticket. Moreover, customers concern about booking flights without leaving the places where they are.

Administrator's interests include modifying, removing existing flights and adding new flights to the system. Furthermore, administrator can manage customers' cancellation requests in terms of either accepting or rejecting them.

Support staff's duties are maintaining performance, ensuring security and reliability of the system, alongside controlling AAS in terms of predefining administrator passwords, adding new administrator customized passwords to the system, and granting them administrator privileges.

### 2.6 Operating Environment

The designed system is thought to be a website and will be available via any web-browser application. It will not be dependent on the technical capabilities or operating system of user's device.

### 2.7 Design and Implementation Constraints

Flight dates and hours should be displayed according to the city of departure and destinations' time zones and the daylight saving time settings for each country should be considered. Additionally, information about any changes that are made in the database should be displayed with no delay.

**2.8 User Documentation**

The instructions on how to book a flight will be provided on the website for inexperienced users.

### 2.9 Assumptions and Dependencies

It is assumed that the user has an internet access and can do online payments. The performance of **ATRS** depends on the quality and speed of the internet connection.

# 3. Requirements and Goal Modelling

### 3.1 Goal Modelling

#### 3.1.1 Strategic Dependency Model

`<img src="media/image2.png" style="width:6.50333in;height:4.12in" />`{=html}

### Figure 2. Strategic Dependency Model

Below given table explains the way how Strategic Dependency Model should be read:

```{=html}
<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 92%" />
</colgroup>
<thead>
<tr class="header">
<th>ID</th>
<th>Description of Figure 2</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>G1.1</td>
<td>In order to see acceptance message of successful payment customers are dependent on technical authority</td>
</tr>
<tr class="even">
<td>G1.2</td>
<td>Customers are dependent on technical authority for customer interface</td>
</tr>
<tr class="odd">
<td>G1.3</td>
<td>Customers are dependent from technical authority on online payment</td>
</tr>
<tr class="even">
<td>G1.4</td>
<td>For portability of the system in terms of being manageable in multiple browsers customers are dependent on technical authority</td>
</tr>
<tr class="odd">
<td>G2.1</td>
<td>Administrators are dependent on technical authority for administrator interface</td>
</tr>
<tr class="even">
<td>G2.2</td>
<td>Administrators are dependent on technical authority for access to database</td>
</tr>
<tr class="odd">
<td>G3.1</td>
<td>Administrators are dependent on support staff for predefined passwords</td>
</tr>
<tr class="even">
<td>G3.2</td>
<td>In order being able to login with predefined passwords administrators are dependent from support staff</td>
</tr>
<tr class="odd">
<td>G3.3</td>
<td>In order to see warning messages administrators are dependent from support staff</td>
</tr>
<tr class="even">
<td>G3.4</td>
<td>To change their predefined passwords administrators are dependent from support staff</td>
</tr>
<tr class="odd">
<td>G4.1</td>
<td>Customers are dependent on safety of communication channel from support staff</td>
</tr>
<tr class="even">
<td>G4.2</td>
<td>Customers are dependent from support staff for fulfilment of SLA of 98%</td>
</tr>
<tr class="odd">
<td>G5.1</td>
<td>Customers are dependent on modification of details of existing flights from administrators</td>
</tr>
<tr class="even">
<td>G5.2</td>
<td>Customers are dependent on addition of new flights to the system from administrators</td>
</tr>
<tr class="odd">
<td>G5.3</td>
<td>Customers are dependent from administrators on removal of cancelled flights from the system from administrators</td>
</tr>
<tr class="even">
<td><blockquote>
<p>
G6
</p>
</blockquote>
</td>
<td>Customers are dependent from bank on making payments</td>
</tr>
</tbody>
</table>
```
##### 3.1.2 Model of software-intensive system

`<img src="media/image3.jpg" style="width:6.5in;height:5.16667in" />`{=html}

**Figure 3.** Software-intensive system model Below given table explains how *Figure 3* should be read:

```{=html}
<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 92%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>
<strong>ID</strong>
</p>
</blockquote>
</th>
<th><strong>Description of Figure 3</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>T1.1</td>
<td>**ATRS** depends on administrator to add new flights</td>
</tr>
<tr class="even">
<td>T1.2</td>
<td>**ATRS** depends on administrator to modify flights flight details</td>
</tr>
<tr class="odd">
<td>T1.3</td>
<td>**ATRS** depends on administrator to remove flights</td>
</tr>
<tr class="even">
<td>T1.4</td>
<td>**ATRS** depends on administrator on management of cancellation requests</td>
</tr>
<tr class="odd">
<td>T1.5</td>
<td>Administrator depends on **ATRS** to display cancellation requests</td>
</tr>
<tr class="even">
<td>T2.1</td>
<td>**ATRS** depends on customer's query to search for flights</td>
</tr>
<tr class="odd">
<td>T2.2</td>
<td>**ATRS** depends on customer's request to book the ticket</td>
</tr>
<tr class="even">
<td>T2.3</td>
<td>**ATRS** depends on customer's request to sort the flights</td>
</tr>
<tr class="odd">
<td>T2.4</td>
<td>**ATRS** depends on customer for specification of passengers</td>
</tr>
<tr class="even">
<td>T2.5</td>
<td>Customer depends on **ATRS** to display information about flights</td>
</tr>
<tr class="odd">
<td>T3.1</td>
<td>**ATRS** depends on support staff to maintain performance of the system</td>
</tr>
<tr class="even">
<td>T3.2</td>
<td>**ATRS** depends on support staff to ensure security of the system</td>
</tr>
<tr class="odd">
<td>T3.3</td>
<td>**ATRS** depends on support staff to ensure safety of the system</td>
</tr>
<tr class="even">
<td>T3.4</td>
<td>**ATRS** depends on support staff to ensure reliability of the system</td>
</tr>
<tr class="odd">
<td>T4.1</td>
<td>Bank depends on **ATRS** to fetch the card details of customer to handle the payment</td>
</tr>
<tr class="even">
<td>T4.2</td>
<td>**ATRS** depends on bank to process the payment</td>
</tr>
</tbody>
</table>
```
##### 3.1.3 Goal and Agent Responsibility Model

`<img src="media/image4.jpg" style="width:6.41667in;height:4.20833in" />`{=html}

**Figure 4.** KAOS Model 1 Below given table explains the way *Figure 4* should be read:

```{=html}
<table>
<colgroup>
<col style="width: 9%" />
<col style="width: 90%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>
<strong>ID</strong>
</p>
</blockquote>
</th>
<th><strong>Description of Figure 4</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>
G1
</p>
</blockquote>
</td>
<td>Customer wants to book a flight</td>
</tr>
<tr class="even">
<td><blockquote>
<p>
G2
</p>
</blockquote>
</td>
<td>Customer searches for flights</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
G3
</p>
</blockquote>
</td>
<td>Customer searches for one-way flights</td>
</tr>
<tr class="even">
<td><blockquote>
<p>
G4
</p>
</blockquote>
</td>
<td>Customer searches for round trip flights</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
G5
</p>
</blockquote>
</td>
<td>Customer searches for flights of multiple destinations</td>
</tr>
<tr class="even">
<td><blockquote>
<p>
G6
</p>
</blockquote>
</td>
<td>Customer specifies departure date of flight</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
G7
</p>
</blockquote>
</td>
<td><blockquote>
<p>
Customer specifies both departure and arrival dates of flight
</p>
</blockquote>
</td>
</tr>
<tr class="even">
<td><blockquote>
<p>
G8
</p>
</blockquote>
</td>
<td>Customer specifies destinations for flight</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
G9
</p>
</blockquote>
</td>
<td>Customer wants to sort flights</td>
</tr>
<tr class="even">
<td>G10</td>
<td>Customer wants to sort flights respect to price</td>
</tr>
<tr class="odd">
<td>G11</td>
<td>Customer wants to sort flights respect to duration</td>
</tr>
<tr class="even">
<td>G12</td>
<td>Customer wants to make payment to book the flight</td>
</tr>
<tr class="odd">
<td>G13</td>
<td>Customer wants to choose ticket type to make payment</td>
</tr>
<tr class="even">
<td>G14</td>
<td>Customer chooses ticket of Premium type</td>
</tr>
<tr class="odd">
<td>G15</td>
<td>Customer chooses ticket of VIP type</td>
</tr>
<tr class="even">
<td>G16</td>
<td>Customer chooses ticket of Standard type</td>
</tr>
<tr class="odd">
<td>G17</td>
<td>Bank wants to handle payment</td>
</tr>
<tr class="even">
<td>G18</td>
<td>Bank wants to handle payment made manually by credit card</td>
</tr>
<tr class="odd">
<td>G19</td>
<td>Bank wants to handle payment made by PayPal method</td>
</tr>
</tbody>
</table>
```
`<img src="media/image5.jpg" style="width:6.5in;height:4.88542in" />`{=html}

### Figure 5. KAOS Model 2

Below given table explains the way *Figure 5* should be read:

```{=html}
<table>
<colgroup>
<col style="width: 6%" />
<col style="width: 93%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p>
<strong>ID</strong>
</p>
</blockquote>
</th>
<th><strong>Description of Figure 5</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>G1</td>
<td>Administrator uses AAS</td>
</tr>
<tr class="even">
<td>G2</td>
<td>Administrator uses AAS to perform administrative tasks</td>
</tr>
<tr class="odd">
<td>G3</td>
<td>Administrator wants to remove cancelled flights from the system</td>
</tr>
<tr class="even">
<td>G4</td>
<td>Administrator wants to manage customers' cancellation requests</td>
</tr>
<tr class="odd">
<td>G5</td>
<td>Administrator wants to add new flights to the system</td>
</tr>
<tr class="even">
<td>G6</td>
<td>Administrator wants to modify details of existing flights</td>
</tr>
<tr class="odd">
<td>G7</td>
<td>Customer specifies both departure and arrival dates of flight</td>
</tr>
<tr class="even">
<td>G8</td>
<td>Administrator uses AAS to ensure security of the system</td>
</tr>
<tr class="odd">
<td>G9</td>
<td>Administrator wants to restrict non-administrative users' access to the system</td>
</tr>
</tbody>
</table>
```
### 3.2 Requirements Modelling

#### 3.2.1 Scope

Scope for our diagrams is focused on the implementation of Use Case ID 15, to customer booking a flight.

#### 3.2.2 Booking a Flight

`<img src="media/image6.jpg" style="width:6.5in;height:4.21875in" />`{=html}

### Figure 6. Booking a flight

**Description:** Customer class contains information about customers, such as their full names, locations, card details and genders. Operations performed by customers via interactions with administrator, bank, flight and flight tickets are contained in the respective part of the Customer class. Administrator class, on the other hand contains the data about the administrator (name and account details) and the operations he/she performs on the system. It relates to customer on approving or rejecting the cancellation requests made by the customer. Flight class is another key class in our diagram and contains information about flight such as destination and origin city, flight date, time and duration, number of seats and flight's availability. Ticket class is also essential for our diagram and contains the full name of the customer that it belongs to. It has its own unique ID, price and type, which expands to Standard, Premium or VIP class tickets. The last class in the diagram belongs to Bank and as operations its payment processing and receipt generating functions are specified.

##### 3.2.3 State Models

**Description:** As visible in class diagram, administrator can add or remove flights to the system. In state diagrams these functionalities displayed as finite states. In first diagram, administrator gets information about a new flight, adds the flight to the system and it is visible to the rest of the users of the system. Second one displays administrator being informed of cancelled flight, removing it and checking whether it is still available on the system. In third diagram, booking flight and making payment functionalities of customer are explained. Here, customer books a flight, he/she is asked to proceed with payment, and the process is finished if customer has enough fund to make payment. In the last diagram bank handles the payment made by the customer. Bank receives information about the payment, processes the payment and generates the receipt.

**1.1 SD_1 Administrator state**

`<img src="media/image7.jpg" style="width:3.63542in;height:4.09375in" />`{=html}`<img src="media/image8.jpg" style="width:1.92708in;height:1.83333in" />`{=html}

### Figure 7. Adding new flight

**1.2 SD_2 Administrator diagram**

`<img src="media/image9.jpg" style="width:3.1875in;height:3.09375in" />`{=html}`<img src="media/image8.jpg" style="width:1.92708in;height:1.83333in" />`{=html}

### Figure 8. Removing existing flight

##### 1.3 SD_3 Bank statement

`<img src="media/image10.jpg" style="width:2.86458in;height:3.42708in" />`{=html}`<img src="media/image11.jpg" style="width:2.0625in;height:1.36458in" />`{=html}

### Figure 9. Processing payment

**1.4 SD_4 Customer state**

`<img src="media/image12.jpg" style="width:3.35417in;height:3.6875in" />`{=html}`<img src="media/image13.jpg" style="width:1.59375in;height:1.91667in" />`{=html}

### Figure 10. Paying for booking

##### 3.2.4 Ticket Booking Process

**Description:** In sequence diagram we have displayed how the objects of classes interact with each other throughout the customer's ticket booking process.

`<img src="media/image14.jpg" style="width:6.5in;height:4.20833in" />`{=html}

## 4. Specific Requirements

### 4.1 External Interface Requirements

#### 4.1.1 User Interfaces

4.1.1.1 **ATRS** should have a customer user interface.

4.1.1.2 **ATRS** should have an administrator user interface.

4.1.1.3 Customer user interface should have a graphical user interface (GUI).

4.1.1.4 Administrator user interface should have a GUI.

**4.1.2 Hardware Interfaces**

No hardware interface is required for the Airline Ticket Reservation system.

#### 4.1.3 Software Interfaces

4.1.3.1 **ATRS** should be a web-based system.

4.1.3.2 It should be possible to open and use the website on the computers with operating systems of Microsoft 7, Microsoft 8, Microsoft 10, Mac Os, Linux, Ubuntu.

4.1.3.3 Oracle Database 12C should be used to store the data about flight details.

4.1.3.4 Oracle Database 12C should be used to store the data about users.

#### 4.1.4 Communication Interfaces

4.1.4.1 HTTP protocol should be used as an interface of communication between client and server sides.

### 4.2 Functional Requirements

4.2.1 Customer should be able to search flights for a specific date for one-way trips.

4.2.2 Customer should be able to search flights for specific dates for round trips.

4.2.3 Customer should be able to search flights for multiple destinations.

4.2.4 Customer should be able to manually enter the names of departure and arrival cities.

4.2.5 Customer should be able to select the names of departure and arrival cities from the list of all flight offered cities.

4.2.6 Customer should be able to specify the number of adults from 1 to 6 while searching for a flight.

4.2.7 Customer should be able to specify the number of children from 0 to 6 while searching for a flight.

4.2.8 Customer should be able to specify the number of infants from 0 to 3 while searching for a flight.

4.2.9 Customer should be able to specify the travel class while searching for a flight.

4.2.10 Customer should be able to select the currency while searching for a flight.

4.2.11 Customer should be able see all the possible flights based on the information he entered.

4.2.12 Customer should be able to sort the list of possible flights by price.

4.2.14 Customer should be able to sort the list of possible flights by flight duration.

4.2.15 Customer should be able to select the type of the ticket.

4.2.16 Customer should be able to change the date of the booked ticket without paying extra money if the booked ticket is type of VIP.

4.2.17 Customer should be able to change the date of the booked ticket by paying extra money if booked ticket is type of Premium.

4.2.18 Customer should not be able to make any changes on the booked ticket if the latter is type of Standard.

4.2.19 Customer should be able to request reservation cancellation.

4.2.20 Customer should be able to see given response to reservation cancellation request.

4.2.21 System should allow a customer to specify only departure date for one-way trips.

4.2.22 System should allow a customer to specify both departure and arrival dates for round trips.

4.2.23 System should provide the list of possible flights matching criterion of user inputs.

4.2.24 System should allow customer to book the ticket to a flight of his choice.

4.2.25 System should allow customer to book tickets for maximum of 6 people.

4.2.26 System should demand customer to provide his/her full name to book the ticket.

4.2.27 System should demand customer not to enter numbers for full name label.

4.2.28 System should demand customer to provide his/her number of travel document to book the ticket.

4.2.29 System should demand customer to enter only characters for full name label.

4.2.30 System should demand customer not to enter specific characters for travel document number label.

4.2.31 System should demand customer to choose the payment method.

4.2.32 System should offer payment via manually manually entering card details as default payment method to customer.

4.2.33 System should be able to handle payments done by the customer via PayPal.

4.2.34 System should be able to process the payments done by the customer via manually entering the card details.

4.2.35 Provided list of flights should contain information about duration of flight for each flight.

4.2.36 Provided list of flights should contain information about price in chosen currency for each flight.

4.2.37 Provided list of flights should illustrate the exact hours of departure and arrival for each flight.

4.2.38 Provided list of flights should contain information about departure and arrival airport names for each flight.

4.2.39 Flight offered cities should be grouped respect to the continents they are located.

4.2.40 Types of the tickets should be classified as Standard, Premium and VIP.

4.2.41 Administrator should be able to add new flights to the system.

4.2.42 Administrator should be able to modify the details of existing flights.

4.2.43 Administrator should be able to remove cancelled flights from the system.

4.2.44 Administrator should be able to see reservation cancellation requests.

4.2.45 Administrator should be able to accept reservation cancellation requests.

4.2.46 Administrator should be able to reject reservation cancellation requests.

4.2.47 Administrator should be able to see details of existing bookings.

### 4.3. Software System Attributes

#### 4.3.1 Usability

4.4.1.1 Non-technical background of a user should not be an obstacle to understand and use the system.

#### 4.3.2 Robustness

4.4.2.1 System should be able to display the most recent inquiry by the user in case of refreshment of page after sudden connection lost.

#### 4.3.3 Consistency

4.4.4.1 Number of available seats for specific flight should be decreased by 1 unit once a transaction of the payment for the flight ticket is made.

### 4.4 Nonfunctional Requirements

#### 4.4.1 Performance Requirements

3.4.1.1 System should be able to handle 1000 transactions per second. \[4.2.21 - 4.2.30\]

##### 4.4.2 Reliability Requirements

4.4.2.1 System's Service Level Agreement (SLA) level should be of 98%. \[4.2.1 - 4.2.20\] 4.4.2.2 Maximum 2 of 1000 online payment transactions through the systems can result in failure. \[3.2.31-3.2.34\]

##### 4.4.3 Security Requirements \[4.2.41 - 4.2.47\]

4.4.3.1 System should have an Authentication and Authorization System (AAS) for logins.

4.4.3.2 System should grant administrative privileges only to the one who logins with predefined administrative username and password.

4.4.3.3 System should allow administrator to change his/her system-generated password as he/she wishes.

4.4.3.4 System should allow administrator to login with customized password.

4.4.3.5 System should block access to one who fails to login three time in a row.

4.4.3.6 System should guarantee the security of communication channel.

4.4.3.7 Customized password should be at least 8 characters.

4.4.3.8 Customized password should contain both letters and numbers.

##### 4.4.4 Maintainability Requirements \[4.2.35 - 4.2.37\]

4.4.4.1 User should be displayed acceptance message within 5 seconds, when he/she submits entered data to the system.

4.4.4.2 Warning messages about entrance data out of defined standards must remain on the screen for 3 seconds.

##### 4.4.5 Portability Requirements \[4.3\]

4.4.5.1 System should be manageable in web-browsers of Internet Explorer, Google Chrome, Mozilla Firefox, Opera and Safari.

#### 4.4.6 Safety Requirements\[4.2.35 - 4.2.37\]

4.4.6.1 System should include restore and recover functions in order to prevent data loss.

4.4.6.2 System should assure data integrity.

#### 4.4.7 Other Requirements\[4.2.21-4.2.25\]

4.4.7.1 System should display a warning message if the customer input for full name label is out of defined standard.

4.4.7.2 System should display a warning message if the customer input for travel document number is out of defined standard.

4.4.7.3 System should display a warning message if the customer wants to book flights for more than 6 people.

4.4.7.4 System should display a warning message if the administrator tries to customize his/her password out of defined standards.\[4.2.47\]

##### 4.5 Solution oriented requirement

4.5.1 Class diagram requirements \[4.2.1,4.2.2,4.2.3,4.2.15,4.2.23,4.2.43\]

`<img src="media/image15.jpg" style="width:6.5in;height:1.95833in" />`{=html}

4.5.2 State diagram requirements \[4.2.32,4.2.34,4.2.41, 4.2.43,4,2,46\]

`<img src="media/image16.jpg" style="width:6.5in;height:2.23958in" />`{=html}

4.5.3 Sequence diagram requirements \[4.4.3.2, 4.2.42, 4.2.34, 4.2.5 - 4.2.17\]

| ID      | Requirements                                                                                      | Diagram        | Priority   |
|---------|------------------------------------|---------------|-------------|
| 4.5.3.1 | Customer should be able to pay online.                                                            | Based on SD1_1 | 4 out of 5 |
| 4.5.3.2 | Administrator should be able to modify the details of existing flights                            | Based on SD1_2 | 4 out of 5 |
| 4.5.3.3 | Administrator should be able to reject reservation/cancellation request.                          | Based on SD1_3 | 5 out of 5 |
| 4.5.3.4 | Customer should be able to see the list of available flights based on the information he entered. | Based on SD1_4 | 5 out of 5 |

#### 4.6 System Features (contains functional, non-functional and solution-oriented requirements)

Features of the system are the followings:

1.  User Interface

2.  Database about flights, reservations, and user details

3.  Communication interface with HTTP protocol

4.  Searching flights for specific dates

5.  Searching flights multiple destinations

6.  Manually entering names of destinations (by city, country, continent)

7.  Specifying number of passengers while searching (adults, children and infants)

8.  Multi - Currency and language

9.  Sort flights either by price or duration

10. Show advantages of VIP and Premium Users

11. Request and response for reservation cancellation

12. Online payment

13. Addition of new flights to system

14. Modification of details about existing flights

15. Removing cancelled flights

16. Management of cancellation requests

17. See and change the details of bookings

18. Performance of **ATRS**

19. Guarantee security of communication channel

20. System attributes

21. AAS for logins

22. Predefined administrator passwords

23. Ability to change passwords

24. Defined requirements for password

25. Warning messages

26. Booking Tickets

27. Reliability of **ATRS**

28. Customizing administrator passwords

29. Security of communication channel

30. Acceptance messages

### 4.7 Requirements prioritization

#### 4.7.1 MoSCoW Method

```{=html}
<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 9%" />
<col style="width: 74%" />
</colgroup>
<thead>
<tr class="header">
<th><strong>Must</strong></th>
<th colspan="2"><ol type="1">
<li><p>
User interface
</p>
</li>
<li><p>
Searching specific dates
</p>
</li>
<li><p>
Database about flights, reservations, and user details
</p>
</li>
<li><p>
Request and response for reservation cancellation
</p>
</li>
<li><p>
Online payment
</p>
</li>
<li><p>
Ticket reservation
</p>
</li>
<li><p>
Addition of new flights to system
</p>
</li>
<li><p>
System attributes
</p>
</li>
<li><p>
Modification of details about existing flights
</p>
</li>
<li><p>
Removing cancelled flights
</p>
</li>
<li><p>
Management of cancellation requests
</p>
</li>
<li><p>
See and change the details of bookings
</p>
</li>
<li><p>
Performance of **ATRS**
</p>
</li>
<li><p>
Communication interface with HTTP protocol
</p>
</li>
<li><p>
AAS for logins
</p>
</li>
<li><p>
Booking Tickets
</p>
</li>
<li><p>
Guarantee security of communication channel
</p>
</li>
</ol>
</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><strong>Should</strong></td>
<td colspan="2"><ol type="1">
<li><p>
Sort flights either by price or duration
</p>
</li>
<li><p>
Request and response for reservation cancellation
</p>
</li>
<li><p>
Guarantee the safety of the channel
</p>
</li>
<li><p>
Ability to change administrator's password
</p>
</li>
<li><p>
Manually entering the names of destinations (by city, country, continent)
</p>
</li>
<li><p>
Defined requirements for password
</p>
</li>
</ol>
</td>
</tr>
<tr class="even">
<td><strong>Could</strong></td>
<td colspan="2"><ol type="1">
<li><p>
Searching flights for specific dates
</p>
</li>
<li><p>
Searching by multiple destinations
</p>
</li>
</ol>
</td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>
3.
</p>
</blockquote>
</td>
<td>Specifying number of passengers while searching (adults, children and infants)</td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>
4.
</p>
</blockquote>
</td>
<td>Multi - Currency and language</td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>
5.
</p>
</blockquote>
</td>
<td>Displaying warning messages</td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>
6.
</p>
</blockquote>
</td>
<td>Maintain 1000 transactions in second</td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>
7.
</p>
</blockquote>
</td>
<td>Customized administrator passwords</td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>
8.
</p>
</blockquote>
</td>
<td>Acceptance messages</td>
</tr>
<tr class="odd">
<td><blockquote>
<p>
<strong>Won't</strong>
</p>
</blockquote>
</td>
<td><blockquote>
<p>
1.
</p>
</blockquote>
</td>
<td>Login and sign in for customers</td>
</tr>
<tr class="even">
<td></td>
<td><blockquote>
<p>
2.
</p>
</blockquote>
</td>
<td>Hotel reservation</td>
</tr>
<tr class="odd">
<td></td>
<td><blockquote>
<p>
3.
</p>
</blockquote>
</td>
<td>Airport pick-up</td>
</tr>
</tbody>
</table>
```
#### 4.7.2 Prioritisation According to Cost

##### 4.7.2.1 Main

`<img src="media/image17.jpg" style="width:6.5in;height:1.88542in" />`{=html}

##### 4.7.2.2 Normalized

`<img src="media/image18.jpg" style="width:6.64583in;height:1.64583in" />`{=html}

##### 4.7.2.3 Percent

`<img src="media/image19.jpg" style="width:2.67708in;height:5.47917in" />`{=html}

#### 4.7.3 Prioritisation According to Value

##### 4.7.3.1 Main

`<img src="media/image20.jpg" style="width:6.5in;height:1.80208in" />`{=html}

##### 4.7.3.2 Normalised

`<img src="media/image21.jpg" style="width:6.5in;height:1.58333in" />`{=html}

##### 4.7.3.3 Percent

`<img src="media/image22.jpg" style="width:2.55208in;height:6.19792in" />`{=html}

#### 4.7.4 Plot ROI Graph

`<img src="media/image23.jpg" style="width:6.5in;height:4.05208in" />`{=html}

## Figure 11. ROI Plot Graph

#### 4.7.5 Hierarchical Prioritization

`<img src="media/image24.jpg" style="width:6.5in;height:6.13542in" />`{=html}

## Figure 13. Hierarchical prioritization of requirements

#### 4.8 Requirements Traceability

**4.8.1 Traceability Matrix**

Scenarios are defined as follows:

Scenario 1 ' Customer wants to search for flights.

Scenario 2 ' Customer wants search for flights of specific dates.

Scenario 3 ' Customer wants to search for flights of specific routes.

Scenario 4 ' Customer wants to see flight prices of different ticket types.

Scenario 5 ' Customer wants to see what is included in different ticket types.

Scenario 6 ' Customer wants to sort available flights according to price.

Scenario 7 ' Customer wants to sort available flights according to duration.

Scenario 8 ' Customer wants to proceed to payment for booked flight.

Scenario 9 ' Customer wants to cancel his/her booked ticket.

Scenario 10 ' Administrator wants to add a new flight to the system.

Scenario 11 ' Administrator wants to modify the details about existing flights.

Scenario 12 ' Administrator wants to remove cancelled flights.

Scenario 13 ' Administrator wants to respond to cancellation requests of customers.

Scenario 14 ' Customer wants to be sure about security of payment.

Scenario 15 ' Customer wants to enter information to the labels.

Scenario 16 ' Customer enters non-standard information while filling labels.

Scenario 17 ' Administrator wants to log on the system.

Scenario 18 ' Administrator types wrong password during log in.

Scenario 19 ' Administrator wants to change his/her predefined password.

Scenario 20 ' Administrator defines new password out of defined standards.

Scenario 21 ' Customers cannot reach website.

Scenario 22 ' Customer wants to change the currency and language.

Scenario 23 ' Support staff wants to ensure the security of the system.

Scenario 24 ' Support staff wants to ensure the safety of the system.

Scenario 25 ' Support staff wants to maintain performance of the system.

Scenario 26 ' Support staff wants to ensure the reliability of the system.

Traceability matrix according to these scenarios and previous mentioned features (contains functional, non-functional and solution-oriented requirements) is constructed as follows:

`<img src="media/image25.jpg" style="width:7.89583in;height:3.28125in" />`{=html}

## Figure 14. Traceability matrix

#### 4.8.2 Traceability Model

`<img src="media/image26.jpg" style="width:5.44792in;height:4.41667in" />`{=html}

## Figure 15. Traceability model

In the given model following subtypes are defined under the traceability types of Content, Abstraction and Evolution:

### Content

-   *Contradicts* **-** inconsistency in the requirements artefacts

-   *Conflicts* **-** realisation of requirement A may hinder (but does not necessarily exclude) the realisation of requirement B

**Abstraction**

-   *Generalizes* - artefact is a generalisation of (one or) several other artefacts

### Evolution

-   *Satisfies* - if artefact A is realised in the system, artefact B is realised as well

-   *Based on* - artefact A has influenced the definition of artefact B

-   *Formalizes* - artefact A is a formal documentation of artefact B

-   *Derived* - artefact A was derived based on a set of other artefact

### 5. Prototype

**Description: Visualisation of website.**

We try to visualize website of ITM Airlines and while customers using this website, they can take several advantage of it. On the other hand, it is narrow version of website in order to make it much more clear and understandable. In the first stage, customers will enter to home page of website. Then, they can choose type of the ticket, number of adults/children/infants, sort tickets either by duration or by price, and in this prototype, customers can only search tickets for one way trip. Moreover, we were add sign in and register buttons for administrators in order to register/enter the system itself. Finally, there are several buttons such as feedback, currency and language buttons that allow customer in order to give their feedbacks about website, change currency and language.

`<img src="media/image27.jpg" style="width:6.5in;height:4.07292in" />`{=html}

`<img src="media/image28.jpg" style="width:6.5in;height:4.07292in" />`{=html}`<img src="media/image29.jpg" style="width:6.5in;height:3.63542in" />`{=html}

## Appendix A: Glossary

| *IEEE*             | The Institute of Electrical and Electronics Engineers                                |
|------------------------|------------------------------------------------|
| *HTTP*             | Hypertext Transfer Protocol                                                          |
| ***ATRS***         | Airline Ticket Reservation System                                                    |
| *Authentication*   | The process of identifying an individual, usually based on username and password     |
| *Authorization*    | The process of granting defined privileges to successfully authenticated individuals |
| *AAS*              | Authentication and Authorization System                                              |
| *Database*         | An organized collection of data, stored and accessed Electronically.                 |
| *Standby database* | Database replica created from a backup of a primary database                         |
| *Server*           | Computer program that provides functionality to other programs such as clients       |
| *World Wide Web*   | Combination of all resources and users on the Internet that are using HTTP.          |
| *Web-browser*      | Software application to access information on World Wide Web                         |
| *Client*           | Computer application, such as web-browser, that runs on a                            |

computer and connects to server as necessary

*Service Level Agreement(SLA)* States agreed level of availability

| *VIP*      | Very Important Person      |
|------------|----------------------------|
| *Adult*    | 12+ years old individuals  |
| *Children* | 0-12 years old individuals |
| *Infant*   | To 2 years                 |
