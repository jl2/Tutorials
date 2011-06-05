#!/usr/bin/env python3

# index.py for the jQuery tutorial.

import bottle
from bottle import route, template, error, static_file, request

local_testing = True

jquery_file = 'jquery-1.6.1.js'

@route('/favicon.ico')
def favicon():
    return static_file('favicon.ico', '.')

@route('/')
def index():
    return template('jquery_tut')

@route('/jquery.js')
def get_jquery():
    return static_file(jquery_file,'.')

@route('/show_rating')
def rate_page():
    return template('jquery_rating')

ratings = [0,0,0,0,0]

@route('/add_rating',method='POST')
def rate_page():
    
    new_rate = int(request.POST.get('rating','1'))
    ratings[new_rate-1] += 1

    count = sum(ratings)
    total = 0
    for idx in range(len(ratings)):
        total += (idx+1)*ratings[idx]
    average = total / count
    return "Content-type: text/xml\n\n<ratings><average>{}</average><count>{}</count></ratings>".format(average, count);

if __name__ == '__main__':
    if local_testing:
        from bottle import debug, run
        debug(True)
        run(reloader=True,port=8179)
    else:
        from wsgiref.handlers import CGIHandler
        CGIHandler().run(bottle.default_app())

