class pyosapp:
        import urllib.request
        appname = 'pyosapp'
        publisher = 'Unsigned'
        def __init__(self, appid, pub):
                self.appname = appid
                self.publisher = pub
        def dataaction(self, action, file, data):
                if action == 'r':
                        import pickle
                        datain = open(file, 'rb')
                        dataread = pickle.load(datain)
                        return dataread
                elif action == 'w':
                        import pickle
                        dataout = open(file, 'wb')
                        pickle.dump(data, dataout)
                        print("Data Wrote By App: " + self.appname)
                        print("By: " + self.publisher)
                        print("To: " + file)
        def retrieveusr(self):
                import pickle
                userfile = open('usrdata.dat', 'rb')
                dataread = pickle.load(userfile)
                return dataread ['username']
        def internet(self, url):
                import urllib.request
                response = self.urllib.request.urlopen(url)
                html = response.read()
                return html

                
