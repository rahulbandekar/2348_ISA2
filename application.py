# app.py
from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "Roll Number: 2348" 
