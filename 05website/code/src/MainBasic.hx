package ;

import js.Node;
import js.npm.Express;

/**
 * @author Matthijs Kamstra aka [mck]
 */
class MainBasic
{

	private var server:Dynamic;

	function new()
	{
		trace("Express website (Basic): open browser at http://localhost:3000");
		trace("Stop node.js : CTRL + c");

		// source http://expressjs.com/starter/hello-world.html

		var app : Express = new Express();

		app.get('/', function (req, res) {
			res.send('Hello World!');
		});

		server = app.listen(3000, function () 
		{
			var host = server.address().address;
			var port = server.address().port;
			trace( 'Example app listening at http://$host:$port'); // ???? http://:::3000
		});
		
	}

    static public function main()
    {
        var main = new MainBasic();
	}
}