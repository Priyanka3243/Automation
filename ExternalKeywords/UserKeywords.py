import string
import random
import unittest

def string_generator():

    chars = string.ascii_uppercase
    return ''.join(random.choice(chars) for _ in range(6))
   # return password


def string_num_generator():
    chars = string.digits
    return ''.join(random.choice(chars) for _ in range(10))

result = string_num_generator()
print(result)
res = string_generator()
print(res)