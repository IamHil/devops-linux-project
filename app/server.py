from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
	return "Version 2 Deployed Successfully!"

if __name__== "__main__":
	app.run(host="0.0.0.0", port=1212, debug=False)

