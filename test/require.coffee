#!/usr/bin/env coffee

fs = require 'fs'
{test} = require('tap')

require('../register')

React = require 'react'
ReactDOMServer = require 'react-dom/server'

test 'require cjsx coffee file', (t) ->
  t.plan(1)

  expected = fs.readFileSync './expected/rendered-output.html', encoding: 'utf8'

  SomeClass = require '../example/some-class'
  rendered = ReactDOMServer.renderToStaticMarkup(React.createElement(SomeClass))

  t.equal rendered, expected.replace(/(\r\n|\n|\r)/gm,""), 'correct output'
  t.end()
