CIS 266 – Unit 3 Lesson Plan 3 – Creating a SOAP Web Service from a UML Diagram

Objectives: 
•	Continue the process of understanding using middleware OOP for creating SOAP Big Web Services
•	Students create a set of DB emulator classes based on the Sailboat UML diagram shown below, web app .jsp test clients and a Web Service and Web Service Test Client for the DB emulator classes.

Universal Modeling Language (UML) Class Diagrams are often used in industry to describe classes showing the class name, accessible properties & methods.  Your CIS249 textbook & the Internet provide detailed information on UML Class Diagrams.  Here’s a sample of a UML Class Diagram representing a Sailboat class that can be used for storing Sailboat information in objects.
	  

If you do not understand how to create a Sailboat class from the above UML Class Diagram, then I recommend you read the related information in your CIS249 textbook, search the Internet for information on UML Class Diagrams, and/or ask your instructor. Your Unit 3 Exam will provide you with a UML Class Diagram and require you to develop related classes and a Web Service similar to the approach used in this assignment.

Lab Assignment: Unit3_Ex3

1.	Create a new package named lstf_sailboat (where lst is the first 3 initials in your last name & f is the first initial in your first name) in the src folder of your project and then create the following classes in this package/folder.

2.	Create a Sailboat class based on the above UML Class Diagram.  Note that the class name must be exactly as shown in the top section of the above diagram (i.e., Sailboat) and your source code will be saved as Sailboat.java, the properties must have identical names and data types as outlined in the middle section of the diagram, and the Sailboat class must have at least the two methods shown in the bottom section of the diagram and they must return the data types shown. Additionally, the class must also include a 0-argument “default” constructor method along with standard “getter” & “setter” methods for all properties.  These standard methods are often not shown in the class diagram since they are assumed (i.e., all Java “beans” must contain a 0-argument constructor/default constructor method and “getter” & “setter” methods for all its properties that will be allowed access from other classes). WebSphere will generate any/all getter/setter methods for your properties if you ask it to do so. 
 
3.	Create a class named LstF_SailboatDB which emulates a database API for the above Sailboat class similar to the ProductDB class from the sample ProductFiles which includes a getSailboat( ) method that creates a Sailboat object using a 0-argument “default” constructor method and returns a Sailboat object with all the information stored on a sailboat based on the sailboat name passed to the getSailboat( ) method.  I suggest you model this method after the getProduct( ) method in the ProductDB class that was provided in Unit 1 Lesson Plan 2. Include at least 5 different Sailboats in your emulator class and have it return a “Unknown Sailboat” if the String passed to the getSailboat( ) method is not valid/included in the “DB”. 

4.	Create a class named LstF_Sailboat_API (which will be used as an API class for a web service) based on the ProductDB_API class provided in ProductFiles. This class must expose two methods, one to create a static SailboatDB object without any input to the method (i.e., by calling its default constructor method) and one that accepts a String from a Web Service Test Client (or any client such as the simple JSP test client you will create) which it passes to the getSailboat( ) method in the SailboatDB object and then returns the String returned to it from the getSailboat( ) method.

5.	Create a folder in your WebContent project folder named LstF_Sailboat_Testers with a full set of jsp testers similar to those provided in the ProductClassTesters folder that fully test the methods in your Sailboat related classes.

6.	After insuring that your testers fully test your classes (making absolutely sure that your API tester fully test all the API methods) then create a SOAP Web Service which includes generating a SOAP Web Service Test Client for your LstF_Sailboat_API class.

7.	Combine the following into a Microsoft Word document & save the document as a file named LstF_Unit3_Ex3.pdf: 

a.	Captures of the outputs after you run your LstF_Sailboat_API_Tester.jsp web app which must invoke both the createSailboat( ) method and the getSailboat( ) method from your LstF_Sailboat_API class and display the result(s).

b.	Captures of the outputs after creating a Web Service with a Test Client and invoking the createSailboat( ) method in the WebSphere generated Test Client and then after selecting the getSailboat( ) method and entering at least 3 different valid sailboat names which were included in your LstF_SailboatDB “emulator” class AND a non-valid sailboat name (i.e, a sailboat name which was not included in your DB “emulator” class).

8.	Create a new folder (NOT inside WebSphere) named LstF_Unit3_Ex3 and copy / paste the following into the folder:
a.	Your lstf_sailboat package folder from your src folder in your workspace project
b.	Your LstF_Sailboat_Testers folder with an index.html page to allow access to all of the jsp testers you created for this exercise from your WebContent project folder
c.	.zip up your LstF_Unit3_Ex3 folder (note this will NOT include your .pdf file)

