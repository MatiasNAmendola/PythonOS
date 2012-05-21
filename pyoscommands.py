def checkcommand(command):
    if command == 'pynote':
        import pynote
        pynote.run()
    elif command == 'datrw':
        import datrw
        datrw.run()
    elif command == 'setup':
        import setuprerun
        setuprerun.run()
    elif command == "webtest":
        import webtest
        webtest.run()
    elif command == "help":
        import webserver
        webserver.run()
    elif command == "pyconsole":
        import pyconsole
        pyconsole.run()
