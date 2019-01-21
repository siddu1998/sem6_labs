# Write a Python program to count the number 4 in a given list. 
length=int(input("Please enter the length"))
list_with_fours=[]
for i in range(0,length):
    list_with_fours.append(int(input()))
print("number of 4's")
print(list_with_fours.count(4))