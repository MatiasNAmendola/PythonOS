import pyosappapi
print ('Welcome to the Binary Data File Writer')
print ('Originally created to fix bugs in pythonos login system')
filename = input ('Filename: ')
datdata = input ('Data: ')
pyosappapi.dataaction('w', filename, datdata)
