#!/usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.route('/t2')
def index():
    return "Hello w2rld!"

if __name__ == '__main__':
    app.run(host='0.0.0.0')
