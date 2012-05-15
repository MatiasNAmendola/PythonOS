def run():
    import http.server
    import socketserver

    PORT = 8000

    Handler = http.server.SimpleHTTPRequestHandler

    httpd = socketserver.TCPServer(("", PORT), Handler)

    print("Serving at port", PORT)
    httpd.serve_forever()
    import webbrowser
    webbrowser.open("localhost:8000")
