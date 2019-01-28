string=input("please enter string")
n=int(input("index to remove"))
beofre_char = string[:n]   
after_char = string[n+1:]  
print(beofre_char+after_char)