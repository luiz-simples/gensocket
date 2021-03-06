module.exports = (grunt) ->
  grunt.initConfig
    concat:
      coffee:
        src: './src/{,*/}*.coffee'
        dest: './src/gensocket.coffee'

    coffee:
      options:
        sourceMap: true
        sourceRoot: ''

      script:
        src:  './src/gensocket.coffee'
        dest: './js/gensocket.js'

    shell:
      options:
        stdout: true
        stderr: true
        failOnError: true

    clean:
      js: [
        'js'
        './src/gensocket.coffee'
      ]

  require('load-grunt-tasks') grunt

  grunt.registerTask 'serve', [
    'clean:js'
    'concat:coffee'
    'coffee:script'
  ]
