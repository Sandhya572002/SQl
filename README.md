This folder contains SQL scripts for creating and populating several database tables.

**Tables:**

* **show_room:** Stores information about showrooms, including room ID, name, location, contact details, floor number, capacity, phone number, availability, contact person, and room type.
* **chat_center:** Stores information about chat centers, including chat ID, user ID, chat name, user name, rating, duration, status, items cost, center phone number, and location.
* **temple_information:** Stores information about temples, including temple ID, name, location, established year, number of visitors, entry fee, god name, contact number, pooja name, and opening time.
* **market_information:** Stores information about markets, including market ID, city ID, market name, location, daily visitors, cost of items, phone number, entry fee, opening time, and email address.
* **metro_information:** Stores information about metro systems, including metro ID, customer ID, metro name, country, total stations, ticket price, number of lines, phone number, number of seats, and operator.

**Data:**

The scripts also include `INSERT` statements to populate the tables with sample data.

**Notes:**

* The scripts assume you have an existing database server set up.
* The scripts use MySQL syntax.
* The scripts include constraints to ensure data integrity. 
* Phone numbers and some costs are fictional and should not be used for real-world purposes.

**How to Use:**

1.  Connect to your database server.
2.  Execute the scripts in the following order:
    * Create the tables:
        * `create_table_show_room.sql`
        * `create_table_chat_center.sql`
        * `create_table_temple_information.sql`
        * `create_table_market_information.sql`
        * `create_table_metro_information.sql`
    * Populate the tables with data:
        * `insert_into_show_room.sql`
        * `insert_into_chat_center.sql`
        * `insert_into_temple_information.sql`
        * `insert_into_market_information.sql`
        * `insert_into_metro_information.sql`

This will create the tables and populate them with sample data. You can then modify the data or add new data as needed.
