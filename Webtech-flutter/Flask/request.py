from flask import Flask
from flask import jsonify
from flask import render_template
from flask import request
app=Flask(__name__)

@app.route('/')
def index():
    return 'Hello World'        

@app.route('/about')
def about():
    return jsonify({"Name":"Khushi", "chinu":"minu"})  

@app.route("/form",methods=["POST","GET"])
def form():
    if request.method== "POST":
        name=request.form["username"]
        return f"Hi {name}"
    return render_template("form.html")
if __name__ == '__main__':
    app.run(debug=True)                  