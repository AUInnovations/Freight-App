# Create Order

######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#main-flow)
3. [Alternate Flows](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#alternate-flows)
4. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#elements-needed)
5. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#layout-of-elements)
6. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#business-rules)
7. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/1)
This allows the Broker, Vendor, or Returning Customer to create a new order.  

---
### Main Flow
1. The **user** enters all required data >>> The **user** selects Save Order >>> The order is saved, but not awaiting.
2. The **user** enters all required data >>> The **user** selects Submit Order >>> All required data verified to be completed >>>  System checks for any data outside tolerances   >>> The order is saved and set to awaiting approval.

---
### Alternate Flows
The **user** clicks another link on the menu bar >> Leaves **Create Order**

---
### Elements Needed
Prompt to ask if data on file is correct
Data fields for user information.
Data fields for locations.
Data fields for vehicles.
Save button that does not need to verify if all data is correct.
Submit button that verifies all required data has been entered.

---
### Layout of Elements 
Modules for each of the sections of data fields from top to bottom.
Client Info
Locations
Vehicles
Submit and Save Buttons

---
### Business Rules 
All required fields must be filled out before submit places the order in awaiting approval.

---
### Questions / Answers
1. **Should there be a save option on the create order page?  Something that's different from submit that will save info to the DB but not actually put it up for approval?  In case they cant finish the whole order at that time, but dont want to have to reenter any info.**
  1. Answer
2. **Question**
  1. Answer



# Customer Edit Info

######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#main-flow)
3. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#elements-needed)
4. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#layout-of-elements)
5. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#business-rules)
6. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Create-Order#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/12)
The section allows for customers, to view their current information and edit it.  

---
### Main Flow
1. The **customer** navigates to the edit information page >>> The **customer** edits the desired information >>> System checks for any data outside tolerances >>> The **customer** presses the save button and the information is updated.

---
### Elements Needed
1. Data fields for customer information.
2. Verify if information being changed can be changed
3. Save button that verifies if all data is correct, verifies all required data has been entered.

---
### Layout of Elements 

---
### Business Rules 
All information that is deleted needs to be given alternative information, cannot delete information.
All new information that is provided needs to match the format of that information.

---
### Questions / Answers
1. **Question**
  1. Answer



# Main Page for Logins
######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Main-Page-for-Logins-info#goal)
2. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Main-Page-for-Logins-info#elements-needed)
3. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Main-Page-for-Logins-info#layout-of-elements)
4. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Main-Page-for-Logins-info#business-rules)
5. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Main-Page-for-Logins-info#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/13)

---
### Elements Needed
1. Textfield for both email and password and subsequent "log in" button
2. A link to "forgot password" page
3. A link to new customer signup page
4. A "home" button to return to main application page
5. Possible company logo displayed on page (whether on top or bottom), as well as links to an "about" or "contact us" page

---
### Layout of Elements 

---
### Business Rules 
The "log in" button shouldnt be clickable till both textfields have data in them.

---
### Questions / Answers
1. **Seems like a pretty bare page, so maybe adding a logo or other things to like those mentioned in 5 might not be a bad idea, no?**
  1. Answer
2. **Question**
  1. Answer
  

# Open or Edit Order
######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#main-flow)
3. [Alternate Flows](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#alternate-flows)
4. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#elements-needed)
5. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#layout-of-elements)
6. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#business-rules)
7. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Open-or-Edit-Order#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/2)
This allows **Brokers, Vendors, and Returning Customers** to open and/or edit an order that has already been created, also includes advanced features depending on the type of user involved

---
### Main Flow
The **user** clicks on open order from a list of orders >>> order information is displayed (for that one particular order) >>> click on edit to change certain information regarding that order (if need be)

---
### Alternate Flows
The **user** clicks on open order from a list of orders >>> order information is displayed (for that one particular order) >>> click on cancel to cancel the order

---
### Elements Needed
The user's previously completed orders will be displayed on the screen. Each order will be a button that when pushed will allow the user to view details about that order. 

---
### Layout of Elements 

---
### Business Rules 
The **user** must be currently signed in to be able to access this page. 

All Edit's done by Vendor / Customer must be approved by Broker. - Need to probably create separate approval functionality for this.

---
### Questions / Answers
1. **Should the broker have a button regarding accepting/rejecting orders?**
  1. Answer
2. **Should the vendor have a button that allows for them to bid on orders (if they have been initially accepted)?**
  1. Answer

  # Relevant Orders

######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#main-flow)
3. [Alternate Flows](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#alternate-flows)
4. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#elements-needed)
5. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#layout-of-elements)
6. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#business-rules)
7. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Relevant-Orders#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/10)
This section allows the **Broker, Vendor, or Returning Customer** to view only orders relevant to their user type.  **One Time Customers** will be able to create leads.

---
### Main Flow
The **Broker** can see all order types >>> selects the desired type >>> Views that **Order**. Can also see **Archived Orders** if selected.

The **Vendor** can choose to bid on open orders, view their current orders, or view their previous orders >>> selects the desired type >>> Move to that **Order**.

The **Returning Customer** can choose to create a new order, view their current orders, or view their previous orders >>> selects the desired type >>> Move to that **Order**.

---
### Alternate Flows


---
### Elements Needed
Dependent on the user type will display different options.

!todo Need to find out what exact things a Customer has to input when creating an Order.  What information is Visible by a Carrier when bidding on an Order and once they won the Order, what information is visible to them.  Naturally the Broker can see/do everything.

---
### Layout of Elements 

---
### Business Rules 
The **user** must be currently signed in to be able to access this page.  **Brokers** will have access to all types of orders.  **Vendors** can bid on a new order, view current orders, or view previous orders.  **Returning Customer** can create a new order, view current orders, or view previous orders. **One Time Customers** will not be able to log in and can only create a lead.

---
### Questions / Answers
1. **Question**
  1. Answer
2. **Question**
  1. Answer

# Vendor Edit Info

######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#main-flow)
3. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#elements-needed)
4. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#layout-of-elements)
5. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#business-rules)
6. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/Vendor-Edit-Info#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/11)
The section allows for **Vendors** to view their current information and edit it.  

---
### Main Flow
1. The **Vendor** navigates to the edit information page >>> The **Vendor** edits the desired information >>> System checks for any data outside tolerances >>> The **Vendor** presses the save button and the information is updated.

---
### Elements Needed
1. Data fields for vendor information.
2. Verify if information being changed can be changed
3. Save button that verifies if all data is correct, verifies all required data has been entered.

---
### Layout of Elements 

---
### Business Rules 
All information that is deleted needs to be given alternative information, cannot delete information.
All new information that is provided needs to match the format of that information.  Submit button will verify if all required data has been filled out.

---
### Questions / Answers
1. **Question**
  1. Answer


# View Current Orders

######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#main-flow)
3. [Alternate Flows](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#alternate-flows)
4. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#elements-needed)
5. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#layout-of-elements)
6. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#business-rules)
7. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/View-Current-Orders#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/3)
This section allows the **Broker, Vendor, or Returning Customer** to view any currently open orders.  

---
### Main Flow
The **user** clicks on an open order >>> Opens that order to be edited >>> Move to **Edit Order** >>>

---
### Alternate Flows
The **user** clicks another link on the menu bar >> Leaves **View Current Order**

---
### Elements Needed
The user's currently open orders will be displayed on the screen.  Each order will be a button that when pushed will allow the user to edit that order. 

---
### Layout of Elements 

---
### Business Rules 
The **user** must be currently signed in to be able to access this page.  Once an order is completed it will not show up on this page.

---
### Questions / Answers
**1. Should they be displayed in a grid or listed with most recent on top?**
  1. Answer
2. **Question**
  1. Answer

# View Order History


######Table of Contents
1. [Goal](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#goal)
2. [Main Flow](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#main-flow)
3. [Alternate Flows](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#alternate-flows)
4. [Elements Needed](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#elements-needed)
5. [Layout of Elements](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#layout-of-elements)
6. [Business Rules](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#business-rules)
7. [Questions / Answers](https://github.com/AUInnovations/Freight-App/wiki/View-Order-History#questions--answers)


### Goal - [Ticket Link](https://github.com/AUInnovations/Freight-App/issues/6)
This allows Brokers, Vendors, and Returning Customers to view their previous orders.

---
### Main Flow
The **user** clicks on a previous order >>> Opens the selected order

---
### Alternate Flows
The **user** clicks another link on the menu bar >> Leaves **View Order History**

---
### Elements Needed
The user's previously completed orders will be displayed on the screen. Each order will be a button that when pushed will allow the user to view that order.

---
### Layout of Elements 
Same format as **View Current Orders**

---
### Business Rules 
The **user** must be currently signed in to be able to access this page. These orders will be kept for.

---
### Questions / Answers
1. **How long do orders need to be kept?**
  1. Answer
2. **Are we going to make it filterable.  Selecting specific dates to search for orders?**
  1. Answer

