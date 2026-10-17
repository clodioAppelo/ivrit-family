"""Local Ivrit Family launcher; uses only Python standard library."""
import functools
import http.server
import os
import threading
import webbrowser

HOST = '127.0.0.1'
DIRECTORY = os.path.dirname(os.path.abspath(__file__))

class Handler(http.server.SimpleHTTPRequestHandler):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, directory=DIRECTORY, **kwargs)

class Server(http.server.ThreadingHTTPServer):
    allow_reuse_address = True

def main():
    try:
        server = Server((HOST, 0), Handler)
    except OSError as exc:
        print('Unable to start the local server:', exc)
        return 1
    url = f'http://{HOST}:{server.server_port}/index.html'
    print('Ivrit Family is running at', url)
    print('Press Ctrl+C here to stop.')
    threading.Timer(0.8, lambda: webbrowser.open(url)).start()
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print('\nStopping Ivrit Family...')
    finally:
        server.server_close()
    return 0

if __name__ == '__main__':
    raise SystemExit(main())
