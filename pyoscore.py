# PythonOS Core Framework
# Developed By TechnologyFlynn Innovations LLC
loginstatus = 'False'
import pickle
def datao(filename, data):
    dataout = open(filename, 'wb')
    pickle.dump(data, dataout)
def datai(filename):
    datain = open(filename, 'rb')
    data = pickle.load(datain)
    return data
def login(username, password, dataaccess):
    if username == dataaccess['username'] and password == dataaccess['password']:
        return 'True'
    else:
        return 'False'
    
