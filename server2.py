import socket
import threading

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

print(f"Running at port {port}")



password = "my_secret_password"  

server_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
server_socket.bind((host, port))
server_socket.listen()

clients = []
users = {}

def broadcast_message(sender_socket, message):
    for client_socket in clients:
        if client_socket != sender_socket and client_socket in users:
            client_socket.send(message)

def handle_client_connection(client_socket):
    try:
       
        client_socket.send("Enter the password: ".encode())
        password = client_socket.recv(1024).decode()

       
        if password != password:
            client_socket.send("incorrect".encode())
            client_socket.close()
            return

       
        client_socket.send("Entrez votre nom d'utilisateur: ".encode())
        username = client_socket.recv(1024).decode()

        users[client_socket] = username
        clients.append(client_socket)

        welcome_message = f"{username} join the chat".encode()
        broadcast_message(client_socket, welcome_message)

        while True:
            message = client_socket.recv(1024)
            if message:
                broadcast_message(client_socket, f"{username}: {message}".encode())
            else:
                if client_socket in clients:
                    clients.remove(client_socket)
                if client_socket in users:
                    username = users[client_socket]
                    broadcast_message(client_socket, f"{username} a quitté le chat".encode())
                    del users[client_socket]
                client_socket.close()
                break
    except KeyboardInterrupt:
        
        if client_socket in clients:
            clients.remove(client_socket)
        if client_socket in users:
            username = users[client_socket]
            broadcast_message(client_socket, f"{username} a quitté le chat".encode())
            del users[client_socket]
        client_socket.close()
    except:
        
        if client_socket in clients:
            clients.remove(client_socket)
        if client_socket in users:
            username = users[client_socket]
            broadcast_message(client_socket, f"{username} a quitté le chat".encode())
            del users[client_socket]
        client_socket.close()

threads = []

try:
    while True:
        client_socket, address = server_socket.accept()
        print(f"Connexion acceptée de {address[0]}:{address[1]}")
        thread = threading.Thread(target=handle_client_connection, args=(client_socket,))
        threads.append(thread)
        thread.start()

except KeyboardInterrupt:
    print("DOWN")

    
    for client_socket in clients:
        client_socket.close()

    
    for thread in threads:
        thread.join()

    
    server_socket.close()
