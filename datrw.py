def run():
	import pyosappapi
	print ('Welcome to the Binary Data File Writer')
	print ('Originally Created To Fix Bugs In The PythonOS Login System')
	filename = input ('Filename: ')
	datdata = input ('Data: ')
	datrw = pyosappapi.pyosapp("DatRW", "TechnologyFlynn Innovations")
	datrw.dataaction('w', filename, datdata)
