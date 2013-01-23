module.exports = (grunt) ->
	
	grunt.initConfig
		coffee:
## ファイルを一つずつ追加しないと駄目なのでめんどくさい方法
##			compile:
##				files: 
##					'dest/js/a.js': 'src/coffee/a.coffee'
## 変換元ファイルから命名できるので柔軟
			glob_to_multiple:
				files: grunt.file.expandMapping(
					['src/coffee/*.coffee']
					'dest/js/'
					rename: (destBase, destPath) -> 
						destBase + destPath.replace(/\.coffee$/, '.js')
				)
		watch :
			files : watchFiles
			tasks : ['coffee']
	
	grunt.loadNpmTasks 'grunt-contrib'
	grunt.loadNpmTasks 'grunt-contrib-watch'
	
	grunt.registerTask 'default', 'watch'



coffeeFiles = 'src/coffee/*.coffee'

watchFiles = [
	coffeeFiles
]
