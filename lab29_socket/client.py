import socket
import time

HOST = '127.0.0.1'
PORT = 1234


s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.connect((HOST, PORT))


while 1:
    s.sendall(b'this is python cocket')
    data = s.recv(1024)
    print(data)
    time.sleep(3)

s.close()
