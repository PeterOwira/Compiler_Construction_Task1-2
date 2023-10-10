import re

# A List of reserved keywords
keywords = [
    'False', 'None', 'True',
    'and', 'as', 'assert', 'async', 'await', 'break',
    'class', 'continue', 'def', 'del', 'elif', 'else', 
    'except', 'finally','for', 'from', 'global', 'if',
    'import', 'in', 'is', 'lambda', 'nonlocal',
    'not', 'or', 'pass', 'raise', 'return', 'try', 
    'while', 'with', 'yield'
]

def is_valid_identifier(identifier):
    # Regular expression to match valid identifiers
    pattern = r"^[a-zA-Z_][a-zA-Z0-9_]*$"

    # Check if the identifier is a keyword
    if identifier in keywords:
        print("identifier is a reserved keyword")
        return  

    # Use the re.match() function to check if the identifier matches the pattern
    return bool(re.match(pattern, identifier))

# Input an identifier
input_identifier = input("Enter an identifier: ")

# Check if the identifier is valid and not a keyword
if is_valid_identifier(input_identifier):
    print(f"{input_identifier} is a valid identifier.")
else:
    print(f"{input_identifier} is not a valid identifier")
