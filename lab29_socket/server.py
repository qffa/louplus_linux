import socket

HOST = '127.0.0.1'
PORT =  1234

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.bind((HOST, PORT))
s.listen(1)

while 1:
    conn, addr = s.accept()

    print('Connected by ', addr)
    while 1:
        data = conn.recv(100)
        print(data)
        conn.sendall(data)

conn.close()
