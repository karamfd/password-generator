import random
import string

while True:
    try:
        password_length = int(input("Password (8 to 32 characters): "))

        if password_length < 8 or password_length > 32:
            print("Error: password must be between 8 and 32 characters")
        else:
            characters = string.ascii_letters + string.digits + string.punctuation
            password = "".join(random.choice(characters) for _ in range(password_length))

            print("Random password:", password)
            break  # Exit the loop after successful password generation

    except ValueError:
        print("Invalid input. Please enter a number.")
