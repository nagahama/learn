module.exports = (grunt) ->
	
	grunt.initConfig
		coffee:
## �t�@�C��������ǉ����Ȃ��ƑʖڂȂ̂ł߂�ǂ��������@
##			compile:
##				files: 
##					'dest/js/a.js': 'src/coffee/a.coffee'
## �ϊ����t�@�C�����疽���ł���̂ŏ_��
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
