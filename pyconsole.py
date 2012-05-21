def run():
    import pyosappapi
    app = pyosappapi.pyosapp("PyConsole", "TechnologyFlynn Innovations")
    print("PyConsole V1.0")
    print("Type end to exit")
    running = True
    while running:
        cmd = input(app.retrieveusr() + "@PyConsole" +":")
        if cmd == "end":
            running = False
        else:
            eval(cmd)