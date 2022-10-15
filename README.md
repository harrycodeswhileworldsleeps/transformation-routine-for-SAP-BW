# transformation-routine-for-SAP-BW

Lets write a simple routine in ABAP for a transformation.
So , for our transformation the requirement is to remove the erroneous value 
hash can be removed from the PSA.For this we have written a function module
with a changing parameter with type as data element of the concerned field.

We have used a data package -> which is an internal table where we are using the STANDARD TABLE OF command 
with the structure name. Which later we have equated to the field , by giving the wa_data-<field_name>

As we know structures , table , table-types , data element can be used as user defined data types.

F.Y.I -> Table type is to be used as a data - type only for an Internal Table.
         You can use the rest of the data dictionary objects as a data-type to make work area
         By using 'STANDARD TABLE OF' command you can create an internal table out of structure , table.
         With data-element only one single entity is given reference of.
         
The FM has a loop approach where STRLEN() is used for length.
Replacing and condensing is done one by one.

The names of components have been changed due to business req.



