string=input("please enter string")

string_to_insert=input("Please enter string to insert")

n=int(len(string)/2)
beofre_char = string[:n]   
after_char = string[n+1:]  
print(beofre_char + string_to_insert+after_char)