##Self-Assessment

#Functionality

3 - The Enigma Class will both encrypt and decrypt successfully.  
using CLI using file i/o all three of the text files are used to display
input and output.

#OOP

3 - My project is broken up into logical components with single responsibilities.
I created 3 classes in addition to the engima class.  Each work to generate
date that is essential for the engima class.  The date_generator creates a date
based on the current date. The key generator creates a random 5 digit key.  The
offset generator uses both the key and the date to create the total offset for
the enigma class to encrypt and decrypt the message

#Ruby Conventions and Mechanics

3 - All code is properly indented and spaced with no lo lines of excessive
length.  All naming conventions are followed.  I used enumerables when needed as
the best tool for the given methods.  I used and accessed 2 hashes that held the
encryption and decryption keys and values. I originally used hashes to generate
the offsets, but after realizing arrays made more sense for the overall function
of the enigma class I refactored the entire class into arrays.  

#TDD

3 - Coverage is at 100 percent in simplecov.  I only stubbed the date generator 
class and did use any mocks. This works for the changing data depending on the
day it is accessed. The key randomizer is tested using a range to cover 5 digits
in a range from 0-99999. Every method is tested for all outcomes.  Tests were
written prior to methods being built. Some tests were refactored after methods
for better coverage

#Version Control

3 - I have over 30 commits that show logical places where I would need make
commits.  No more than 3 commits include multiple pieces of functionality.  Pull
requests were completed when there was a clear change in the work.  Like moving
from my generator classes to enigma to CLI to refactor.  This would reflect more
of the workflow in a group project.  
