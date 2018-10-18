import base64
import paramiko

key = paramiko.RSAKey(data=base64.b64decode(b'AAAB3NzaC1yc2EAAAADAQABAAABAQCyF97yhfAWyItAzfU88OBxUnG+Vfl0I1zC+k61CsFDl6zqq7IvCpCfp3jPZQxc8EYXgitn0JBW8eh/E2Kygm+NRBydRuXikfXPeowAPjEY0hKNg62yxfnPuAUxdt+Iud0V+Q3bGKbQrhyc3nB5rxl9GE0KKuK1xcEDDJJiNUqrXBILR7V+AuYOr2Y9YoUSUU9f0a6/U2EjsesWK9IzJspivwfIErQ6gedeqNpnByDyITnEounoGzYGmzTT1cyPNiscZIkRExEOG6zfkFqT/ZvvNlOca1+1GfRp0GTMRIkvPysv1uOUaENsLI+qsGjqLm1QgVZXwjqNQ83I20cSJRDP neon@db0'))
client =  paramiko.SSHClient()
client.get_host_keys().add('localhost', 'ssh-rsa', key)
client.connect('localhost', username='neon', password='neon')
stdin, stdout, stderr = client.exec_command('ls')
for line in stdout:
    print('...' + line.strip('\n'))
client.close()
