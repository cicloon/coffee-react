util = require('util')

SomeClass = require './some-class.coffee'
React = require 'react'
ReactDOMServer = require 'react-dom/server'

process.stdout.write ReactDOMServer.renderToStaticMarkup(React.createElement(SomeClass))
