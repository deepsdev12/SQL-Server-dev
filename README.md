# SQL-Server-dev

1. SQL code - TreeStructureQueriesWithVariable.sql - This sql script creates a table - 'tree' , Inserts data into the table and creates two table valued functions-
   [dbo].[TSturctureVariableNode] - we can pass a value for node from 'tree' table in this function and this will 
   return the hierarchy of parents in the tree starting from the value of the node.
   [dbo].[TSturcturesVariableParent] - we can pass a value for parent from 'tree' table in this fuction and this 
   will return the downwards-hierarchy of nodes in the tree starting from the value of the parent.
2. Two SSIS packages - .dtsx files
   ReadingSameFolderFiles_ForeachFileEnumurator.dtsx - Reads all .txt (text) files from a specified folder and load 
   all of them , one by one using a ForEachLoop container , in to a SQL Server table.
   MultiSheetSameMetaData.dtsx - Reads all sheets from an excel one by one and Load them into a SQL Server table. 
   Note - all the sheets have same schema.
3. Python code - Dictionarywork.py - this code creates a python dictionary, prints the items i.e.key and values 
 in a formatted manner and asks you to perform add, delete or show operations; you can do multiple operations but 
 one by one. functions - add(), delete() and show() has been added to perform the desired operation over the 
 dictionary.  At the end, it prints the final items of the dictionary in the formatted manner.   
