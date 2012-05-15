def run():
    import pyosappapi
    webtest = pyosappapi.pyosapp("PythonOS Internet Test", "TechnologyFlynn Innovations")
    print(webtest.internet("http://dl.dropbox.com/u/51055298/PythonOS/webtest.html"))
