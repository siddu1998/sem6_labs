color_list_1 = set(["White", "Black", "Red"])
color_list_2 = set(["Red", "Green"]) 
new_list = [item for item in color_list_1 if item not in color_list_2]
print(new_list)