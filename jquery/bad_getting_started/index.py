#!/usr/bin/env python3

# index.py for the jQuery tutorial.

import bottle
from bottle import route, template, error, static_file, request

local_testing = True

jquery_file = 'jquery-3.7.0.js'

@route('/favicon.ico')
def favicon():
    return static_file('favicon.ico', '.')

@route('/')
def index():
    return template('jquery_tut')

@route('/jquery.js')
def get_jquery():
    return static_file(jquery_file,'.')

if __name__ == '__main__':
    if local_testing:
        from bottle import debug, run
        debug(True)
        run(reloader=True,port=8179)
    else:
        from wsgiref.handlers import CGIHandler
        CGIHandler().run(bottle.default_app())

