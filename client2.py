import socket

print (" (              (       *  ")         
print (" )\ )    (      )\ )  (  `       )")  
print ("(()/(    )\    (()/(  )\))(   ( /(")  
print (" /(_))((((_)(   /(_))((_)()\  )\())") 
print ("(_))_  )\ _ )\ (_))  (_()((_)((_)\ ")  
print (" |   \ (_)_\(_)| |   |  \/  | / (_)") 
print (" | |) | / _ \  | |__ | |\/| | | |  ") 
print (" |___/ /_/ \_\ |____||_|  |_| |_| ")



host = "localhost"
port = 5000

print(f"\nRunning at port {port}")




client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
client_socket.connect((host, port))

password = input("Entrez le mot de passe: ")
client_socket.send(password.encode())

response = client_socket.recv(1024).decode()

if response == "Mot de passe incorrect":
    print(response)
    client_socket.close()
    exit()

username = input("Entrez votre nom d'utilisateur: ")
client_socket.send(username.encode())
print("\n")  

while True:
    message = input("> ")
    client_socket.send(message.encode())
    print("\n")  

    response = client_socket.recv(1024).decode()
    print(response)

    if message.lower() == "/quit":
        break

# Run /quit pour quitter le chat

client_socket.close()
