import datetime

now = datetime.datetime.now()
PDX = now

LCY_open = now.replace(hour=1, minute=0, second=0, microsecond=0)

LCY_close = now.replace(hour=13, minute=0, second=0, microsecond=0)

NYC_open = now.replace(hour=6, minute=0, second=0, microsecond=0)

NYC_close = now.replace(hour=18, minute=0, second=0, microsecond=0)



if (PDX >= LCY_open) and (PDX <= LCY_close):
    print ("The London branch is open.")
else:
        print ("The London Branch is closed.")
    

if (PDX >= NYC_open) and (PDX <= NYC_close):
    print ("The New York office is open.")
else:
        print ("The New York Branch is closed.")
