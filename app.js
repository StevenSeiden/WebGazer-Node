const express = require('express')
const bodyParser = require("body-parser")
const app = express()
const fs = require('fs')
const port = process.env.PORT || 3003

app.use(express.static(__dirname + '/public'));
app.use(bodyParser())


app.get('/', function (req, res) {
	res.sendFile(__dirname + '/public/index.html')

});

app.post('/download', function(req, res) {
	try {
		data='hello'// = req.body.current_coordinates
		fs.writeFileSync(__dirname + '/public/output.txt', data)
		
	} catch (err) {
		console.log(err)
	}
	console.log(req.body)
});

app.get('/download/:fileName', (req, res) => {
	const file_name = req.params.fileName;
	var path = './public/' + file_name;
	var size = fs.statSync(path).size;
	var f = fs.createReadStream(path);
	res.writeHead(200, {
    		'Content-Type': 'application/force-download',
    		'Content-Disposition': 'attachment; filename=' + file_name,
    		'Content-Length': size
  	});
  	f.pipe(res);
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
