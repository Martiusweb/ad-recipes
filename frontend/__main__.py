# coding: utf-8
"""
Author: Martin Richard <martius@martiusweb.net>
Website: https://www.martiusweb.net
MIT License
"""

import os.path

import flask

app = flask.Flask(
    __name__,
    static_folder=os.path.join(os.path.dirname(__file__), '../www/static'))


@app.route("/")
def index():
    return flask.render_template('main.html')


if __name__ == "__main__":
    app.run(debug=True)
