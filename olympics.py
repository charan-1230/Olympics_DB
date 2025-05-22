import subprocess as sp
import pymysql
import pymysql.cursors

def option1():
    """
    Function to query sportspeople older than a user-specified age.
    """
    try:
        age = input("Enter the age:\n>").strip()

        if not age.isdigit():
            print("ERROR: Age must be a positive integer")
            return

        query = """
        SELECT * 
        FROM SPORTSPEOPLE
        WHERE TIMESTAMPDIFF(YEAR, DOB, CURDATE()) > %s;
        """

        print(f"Executing query to find sportspeople older than {age} years...")
        cur.execute(query, (age,))
        results = cur.fetchall()

        if results:
            print("Query Results:")
            for row in results:
                print(row)
        else:
            print(f"No sportspeople older than {age} years found")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option2():
    """
    Function to query sportspeople from a user-specified country.
    """
    try:
        country = input("Enter the country name to get sportspeople names from that country:\n> ").strip()

        if not country:
            print("ERROR: Country name cannot be empty")
            return

        query = """
        SELECT Fname, Lname
        FROM SPORTSPEOPLE
        WHERE Country = %s;
        """

        print(f"Executing query to find sportspeople from {country}...")
        cur.execute(query, (country,))
        results = cur.fetchall()

        if results:
            print("Query Results:")
            for row in results:
                print(row)
        else:
            print(f"No sportspeople from {country} found")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option3():
    """
    Function to count the total medals won by a user-specified country.
    """
    try:
        country = input("Enter the country name to count total medals for: ").strip()

        if not country:
            print("ERROR: Country name cannot be empty.")
            return

        # query = """
        # SELECT COUNT(*) AS Total_Medals
        # FROM AWARDS
        # WHERE Country = %s;
        # """

        query = """
        SELECT 
        SP.Country,
        COUNT(*) AS Total_Medals
        FROM
        AWARDS A
        JOIN 
        SECURED_BY SB ON A.AWsports_ID = SB.SEC_awssports_ID
        JOIN 
        SPORTSPEOPLE SP ON SB.SEC_sportspeople_ID = SP.Sportspeople_ID
        WHERE 
        SP.Country = %s
        GROUP BY 
        SP.Country;
        """
        print(f"Executing query to count total medals for {country}...")
        cur.execute(query, (country,))
        result = cur.fetchone()

        if result and result['Total_Medals'] is not None:
            print(f"Total Medals for {country}: {result['Total_Medals']}")
        else:
            print(f"No medals found for {country}.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option4():
    """
    Function to fetch inventory items where the name contains 'ball'.
    """
    try:
        query = """
        SELECT Inventory_name,Type,Quantity,Status,Cost
        FROM INVENTORY
        WHERE Inventory_name LIKE '%ball%';
        """
        print("Executing query to fetch inventory items containing 'ball'...")
        cur.execute(query)
        results = cur.fetchall()
        print("Query Results:")
        for row in results:
            print(row)

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option5():
    """
    Function to count distinct athletes based on user-specified sex, award level, year, and country.
    """
    try:
        sex = input("Enter the sex (M/F): ").strip().upper()
        level = input("Enter the award level (Gold/Silver/Bronze): ").strip().capitalize()
        year = input("Enter the year: ").strip()
        country = input("Enter the country: ").strip()

        if sex not in ['M', 'F']:
            print("ERROR: Invalid sex. Enter 'M' for Male or 'F' for Female.")
            return
        if not level:
            print("ERROR: Award level cannot be empty.")
            return
        if not year.isdigit():
            print("ERROR: Year must be a valid number.")
            return
        if not country:
            print("ERROR: Country cannot be empty.")
            return

        query = """
        SELECT COUNT(DISTINCT sp.Sportspeople_ID) AS DistinctAthletes
        FROM SECURED_BY sb
        JOIN AWARDS aw ON sb.SEC_awssports_ID = aw.AWsports_ID
        JOIN SPORTSPEOPLE sp ON sb.SEC_sportspeople_ID = sp.Sportspeople_ID
        WHERE sp.Sex = %s
          AND aw.Level = %s
          AND aw.Year = %s
          AND sp.Country = %s;
        """

        print(f"Executing query ...")
        cur.execute(query, (sex, level, year, country))
        result = cur.fetchone()

        if result and result['DistinctAthletes'] is not None:
            print(f"Number of Distinct Athletes: {result['DistinctAthletes']}")
        else:
            print(f"No athletes found matching the criteria: Sex={sex}, Level={level}, Year={year}, Country={country}.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option6():
    """
    Function to fetch details of athletes who won awards based on user-specified country, sport, type, and year.
    """
    try:
        country = input("Enter the country name(e.g., India): ").strip()
        sport = input("Enter the sport name (e.g., Badminton): ").strip()
        sport_type = input("Enter the sport division (Singles/Doubles/Mixed): ").strip().capitalize()
        year = input("Enter the year (e.g., 2024): ").strip()

        if not country or not sport or not sport_type or not year:
            print("ERROR: All inputs (country, sport, type, year) are required.")
            return
        # if sport_type not in ["Singles", "Doubles", "Mixed"]:
        #     print("ERROR: Invalid sport type. Please enter Singles, Doubles, or Mixed.")
        #     return
        if not year.isdigit():
            print("ERROR: Year must be a valid number.")
            return

        query = """
        SELECT 
            A.Level AS Award_Level, 
            CONCAT(SP.Fname, ' ', SP.Lname) AS Athlete_Name, 
            A.Year AS Award_Year
        FROM 
            AWARDS A
        JOIN 
            SECURED_BY SB ON A.AWsports_ID = SB.SEC_awssports_ID
        JOIN 
            SPORTSPEOPLE SP ON SB.SEC_sportspeople_ID = SP.Sportspeople_ID
        JOIN 
            SPORTS S ON A.AWsports_ID = S.Sport_ID
        WHERE 
            SP.Country = %s
            AND S.Sname = %s
            AND S.Division = %s
            AND A.Year = %s;
        """

        print(f"Executing query ...")
        cur.execute(query, (country, sport, sport_type, year))
        results = cur.fetchall()

        if results:
            print("Query Results:")
            for row in results:
                print(f"Award Level: {row['Award_Level']}, Athlete Name: {row['Athlete_Name']}, Award Year: {row['Award_Year']}")
        else:
            print(f"No results found for {country}, Sport: {sport}, Type: {sport_type}, Year: {year}.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return

def option7():
    """
    Function to count purchases made by audiences from a user-specified country at a specified enterprise in certain contract years.
    """
    try:
        country = input("Enter the country of origin (e.g., USA): ").strip()
        enterprise_name = input("Enter the enterprise name (e.g., McDonald's): ").strip()
        years = input("Enter the contract years (comma separated, e.g., 2024, 2020, 2016): ").strip()

        if not country or not enterprise_name:
            print("ERROR: Country and enterprise name cannot be empty.")
            return

        years_list = [year.strip() for year in years.split(',')]
        if not all(year.isdigit() for year in years_list):
            print("ERROR: All years must be valid numbers.")
            return

        years_tuple = tuple(map(int, years_list))

        query = """
        SELECT COUNT(*)
        FROM MADE_PURCHASES_FROM mpf
        JOIN AUDIENCE aud ON mpf.MPF_ticket_ID = aud.Ticket_ID
        JOIN BUSINESSES bus ON mpf.MPF_registration_ID = bus.Registration_ID
        WHERE bus.Enterprise_name = %s
          AND aud.Country_of_origin = %s
          AND bus.Contract_year IN %s;
        """

        print(f"Executing query ...")
        cur.execute(query, (enterprise_name, country, years_tuple))
        result = cur.fetchone()

        if result and result['COUNT(*)'] is not None:
            print(f"Total Purchases: {result['COUNT(*)']}")
        else:
            print(f"No purchases found for {enterprise_name} by audiences from {country} in the specified years.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the query")
        print(">>>>>>>>>>>>>", e)

    return
def option8():
    """
    Function to insert into the audience table with user-provided details.
    """
    try:
        print("NOTE: Please follow formats specified while inserting...")
        ticket_id = input("Enter Ticket_ID: ").strip()
        if not ticket_id.isdigit():
            print("ERROR: Ticket_ID must be a positive integer.")
            return
        
        name = input("Enter Name as (Fname Lname): ").strip().split(' ')
        if len(name) != 2:
            print("ERROR: Name must be entered in 'Fname Lname' format.")
            return
        Fname, Lname = name[0], name[1]
        
        Sex = input("Enter Sex as (M/F): ").strip().upper()
        if Sex not in ['M', 'F']:
            print("ERROR: Sex must be 'M' or 'F'.")
            return
        
        DOB = input("Enter DOB as (YYYY-MM-DD): ").strip()
        try:
            # Validate the date format
            from datetime import datetime
            datetime.strptime(DOB, '%Y-%m-%d')
        except ValueError:
            print("ERROR: DOB must be in YYYY-MM-DD format.")
            return
        
        Country = input("Enter Country_of_Origin: ").strip()
        if not Country:
            print("ERROR: Country_of_Origin cannot be empty.")
            return
        
        # Use parameterized query
        query = """
        INSERT INTO AUDIENCE (Ticket_ID, Fname, Lname, Sex, DOB, Country_of_Origin)
        VALUES (%s, %s, %s, %s, %s, %s);
        """
        
        print(f"Executing query ...")
        cur.execute(query, (ticket_id, Fname, Lname, Sex, DOB, Country))
        con.commit()
        print("Insert successful!")

    except Exception as e:
        con.rollback()
        print("Failed to execute the insert query")
        print(">>>>>>>>>>>>>", e)

    return

def option9():
    """
    Function to update the quantity of a specific inventory item.
    """
    try:
        item_name = input("Enter the Inventory Name to update: ").strip()
        quantity = input(f"Enter the new Quantity for '{item_name}': ").strip()

        if not quantity.isdigit():
            print("ERROR: Quantity must be a positive integer.")
            return

        query = "UPDATE INVENTORY SET Quantity = %s WHERE Inventory_name = %s;"
        
        print(f"Executing query ...")
        cur.execute(query, (quantity, item_name))
        con.commit()
        print(f"Update successful: Quantity for '{item_name}' set to {quantity}.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the update query")
        print(">>>>>>>>>>>>>", e)

    return
def option10():
    """
    Function to delete a sport from the SPORTS table with user-provided Sport_name.
    """
    try:
        sport_name = input("Enter Sport_name to delete from the SPORTS table: ").strip()

        if not sport_name:
            print("ERROR: Sport_ID must be a positive integer.")
            return

        query = "DELETE FROM SPORTS WHERE Sname = %s;"

        print(f"Executing query ...")
        cur.execute(query, (sport_name,))
        con.commit()
        print(f"Deletion successful: Sport with Sport_name {sport_name} removed.")

    except Exception as e:
        con.rollback()
        print("Failed to execute the delete query")
        print(">>>>>>>>>>>>>", e)

    return
def dispatch(ch):
    """
    Function that maps helper functions to option entered
    """

    if(ch == 1):
        option1()
    elif(ch == 2):
        option2()
    elif(ch == 3):
        option3()
    elif(ch == 4):
        option4()
    elif(ch == 5):
        option5()
    elif(ch == 6):
        option6()
    elif(ch == 7):
        option7()
    elif(ch == 8):
        option8()
    elif(ch == 9):
        option9()
    elif(ch == 10):
        option10()
    else:
        print("Error: Invalid Option")

# Global
while(1):
    tmp = sp.call('clear', shell=True)
    
    # Can be skipped if you want to hardcode username and password
    username = input("Enter your MYSQL Username: ")
    password = input("Enter the Password: ")

    try:
        # Set host to the server's address if you don't want to use local SQL server 
        con = pymysql.connect(host='localhost',
                              port=3306,
                              user=username,
                              password=password,
                              db='OLYMPICS',
                              cursorclass=pymysql.cursors.DictCursor)
        tmp = sp.call('clear', shell=True)

        if(con.open):
            print("Connected")
        else:
            print("Failed to connect")

        tmp = input("Enter any key to CONTINUE\n>")

        with con.cursor() as cur:
            while(1):
                tmp = sp.call('clear', shell=True)
                print("List of SERVICES available:")
                print("1. Get sportspeople info who are older than a particular age")  # 
                print("2. Get names of sportspeople from a particular Country")  # 
                print("3. Know about the total medals won by a Country")  # 
                print("4. Know about inventory items where the name contains 'ball'")  # 
                print("5. Easily discover the number of distinct athletes by filtering based on your preferences for sex, award level, year, and country")  # 
                print("6. Explore award-winning athletes with filters for country, sport, type (singles, doubles, mixed), and year to suit your interests.")  #     
                print("7. Analyze number of purchases made by audiences from a specific country, enterprise, and contract years of your choice.")  #     
                print("8. Add an audience")  #     
                print("9. Update the quantity of a particular inventory.")  #  
                print("10. Remove a sport.") #    
                print("11. option to Logout")
                ch = int(input("Enter choice number\n> "))
                tmp = sp.call('clear', shell=True)
                if ch == 11:
                    exit()
                else:
                    dispatch(ch)
                    tmp = input("Enter any key to CONTINUE\n>")

    except Exception as e:
        tmp = sp.call('clear', shell=True)
        print(e)
        print("Connection Refused: Either username or password is incorrect or user doesn't have access to database")
        tmp = input("Enter any key to CONTINUE\n>")