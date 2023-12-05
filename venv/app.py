import atexit

# app.py

from flask import Flask
app = Flask(__name__)


@app.route("/")
def hello():
	return "Hello, this is a sample web app with Nginx and Python!"

# function to run at exit
def exit_handler():
	print("Shutting down gracefully")

if __name__ == '__main__':
	atexit.register(exit_handler)
	app.run(host='0.0.0.0', port=80, debug=True)
