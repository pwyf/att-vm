#!/usr/bin/env python

from flask import Flask

app = Flask(__name__)

@app.route('/t1')
def index():
    return "Hello w1rld!"

if __name__ == '__main__':
    app.run(host='0.0.0.0')
