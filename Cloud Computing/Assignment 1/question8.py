# Write a Python program to test whether a number is within 100 of 1000 or 2000.
n=int(input("enter number"))
if 100<n<1000:
    print("within 100 and 1000")
elif  1000<n<2000:
    print("between 1000 nad 2000")
else :
    print("Not in any of our ranges")