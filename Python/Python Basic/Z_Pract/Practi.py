m="Mohit Janbandhu 1234"
upper_case=0
lower_case=0
digits=0
for char in m:
    if char.isupper():
        upper_case +=1
    elif char.islower():
        lower_case +=1
    elif char.isdigit():
        digits +=1
        
print("Upper Latters are {}, Lower Latters are {} and digits are {}".format(upper_case,lower_case,digits))