class Solution:
    def addBinary(self, a: str, b: str) -> str:
        x, y = int(a, 2), int(b, 2)  # Convert binary strings to integers
        while y:
            carry = x & y  # Carry is where both bits are 1
            x = x ^ y      # Sum without carry
            y = carry << 1 # Shift carry to the left
        return bin(x)[2:]  # Convert the result back to binary string

     