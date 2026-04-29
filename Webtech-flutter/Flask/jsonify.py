from flask import Flask
from flask import jsonify
app=Flask(__name__)

@app.route('/')
def index():
    return 'Hello World'        

@app.route('/about')
def about():
    return jsonify({"Name":"Khushi", "chinu":"minu"})    
if __name__ == '__main__':
    app.run(debug=True)                  
