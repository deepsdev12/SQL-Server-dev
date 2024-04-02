Dict = {"Name":"ABC", "age":27, "height":5.2}
Dict["Name2"]="XYZ"
for var, atr in Dict.items():
    print("key is %s value is %s" % (var, atr) )

def add():
   key = input("enter key to be added in the dict:") 

   value = input("enter value of the key to be added in the dict:")
   Dict[key] = value
   for var, atr in Dict.items(): 
        print("key is %s value is %s" % (var, atr) )
 
def delete():
    key = input("Enter key to be deleted from the dict:")
    del Dict[key]
    for var, atr in Dict.items(): 
        print("key is %s value is %s" % (var, atr) )

def show():
    key = input("Enter key for which you want to see the value:")
    value = Dict[key]
    print("Value for the key is %s" %(value) )

def main():
    action = input("Enter action to be performed from add, delete or show")
    if action == "add" :
        add()
    elif action == "delete":
        delete()
    elif action == show():
        show()
    
    MoreActions = input("do you want to perform more action? Enter Y or N")
    if MoreActions   == "Y": 
        main()
   

main()        
        

       

