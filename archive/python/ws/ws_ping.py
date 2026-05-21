from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def layout():
    return render_template("layout.html")

@app.route("/index")
def index():
    return render_template("index.html")

@app.route("/about")
def about():
    return render_template("about.html")        

@app.route("/servers")
def server():
    return render_template("server.html")

if __name__ == "__main__":
    app.run(host="uk1as38.oilspace.net",port=54321, debug=True)
