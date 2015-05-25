linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"

class LinterGotype extends Linter
  @syntax: ['source.go']

  defaultCmd: 'gotype'

  cmd: null

  errorStream: 'stderr'

  linterName: 'gotype'

  regex: '.+?:(?<line>\\d+):((?<col>\\d+):)?(?<error>.+)'

  options: ['executablePath', 'extraOptions']

  constructor: (@editor) ->
    super(@editor)

    @cmd = @defaultCmd

    keyPath = "linter-#{@linterName}.extraOptions"

    @extraOptionsListener = atom.config.observe keyPath, =>
      @cmd = "#{@defaultCmd} #{@extraOptions}"

  destroy: ->
    @extraOptionsListener.dispose()

  formatMessage: (match) ->
    match.error

module.exports = LinterGotype
