import random
import string


class Random:
    @staticmethod
    def string(length=10):
        character_set = string.ascii_letters
        return ''.join(random.choice(character_set) for i in range(length))

    @staticmethod
    def phone(length=9):
        character_set = string.digits
        return ''.join(random.choice(character_set) for i in range(length))
