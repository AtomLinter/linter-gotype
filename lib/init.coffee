path = require 'path'

module.exports =
  config:
    executablePath:
      title: 'gotype Executable Path'
      description: 'The path where `gotype` is located'
      type: 'string'
      default: ''
    extraOptions:
      title: 'Extra Options'
      description: 'Options for `gotype` command'
      type: 'string'
      default: '-e'
  activate: ->
    console.log 'activate linter-gotype'
