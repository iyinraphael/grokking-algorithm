import math 
import random
import time
from datetime import datetime

animals = ['Duck', 'Jackal', 'Hippo', 'Aardvark', 'Cat', 'Flamingo', 'Iguana', 'Giraffe', 'Elephant']

#######Constant 
#0(1)
####### 
def getAnimals():
	return animals


#####Linear 
#0(n)
#####

#Returns the number of animals
def countAnimals():
	num_animals = 0
	for animal in animals:
		num_animals +=1
	return num_animals

countAnimals

#Given the name of a animal,
#retun True if that animal is in the list, False otherwise
def hasAnimal(animal_name):
	num_comparisons = 0
	for animal in animals:
		num_comparisons +=1
		print(f"comparisons: {num_comparisons}")
		if animal == animal_name:
			return True
	return False
