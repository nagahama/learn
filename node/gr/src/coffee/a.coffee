hello = (msg) ->
	console.log(msg)

hello('a')

hello('a')


coffee:
	compile:
		files: 
			'path/to/result.js': 'path/to/source.coffee'
			'path/to/another.js': ['path/to/sources/*.coffee', 'path/to/more/*.coffee']
	glob_to_multiple:
		files: grunt.file.expandMapping(
			['path/to/*.coffee']
			'path/to/dest/'
			rename: (destBase, destPath) -> 
				destBase + destPath.replace(/\.coffee$/, '.js')
		)

aaaaaaaaaaaabv('a')