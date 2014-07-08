module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-sass'

  grunt.config.init
    sass:
      theme:
        options:
          includePaths: ["#{__dirname}/node_modules/syntaxhighlighter-theme/scss"]

        files: [
          expand: true
          cwd: 'scss'
          src: '**/*.scss'
          dest: 'css'
          ext: '.css'
        ]

  grunt.registerTask 'build', ['sass:theme']
