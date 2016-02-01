/**
 * Created by Administrator on 2016/1/28.
 */
//http://localhost:8888/select?aa=001&bb=002
/*
var http = require('http');
var url = require('url');
http.createServer(function(req, res){
    var arg = url.parse(req.url).query;  //方法一arg => aa=001&bb=002
    var arg = url.parse(req.url, true).query;  //方法二arg => { aa: '001', bb: '002' }
    console.log(arg.aa);//返回001
    console.log(arg.bb);//返回002
    console.log(arg)
    //然后就可以根据所得到的数据处理了

}).listen(8888);//建立服务器并监听端口
*/

var http = require('http');
var querystring = require('querystring');
var url = require('url');
var util = require('util');
var data = {key: 'value', hello: 'world'};
http.createServer(function(req, res){
    var post = '';     //定义了一个post变量，用于暂存请求体的信息
    var arg = url.parse(req.url, true).query;  //方法二arg => { aa: '001', bb: '002' }
    console.log(arg);
    req.on('data', function(chunk){    //通过req的data事件监听函数，每当接受到请求体的数据，就累加到post变量中
        post += chunk;
    });
/*    var srv = http.createServer(function (req, res) {
        res.writeHead(200, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(data));
    });*/
    req.on('end', function(){    //在end事件触发后，通过querystring.parse将post解析为真正的POST请求格式，然后向客户端返回。
        post = querystring.parse(post);
        res.writeHead(200, {'Content-Type': 'application/json'});
        //res.end(JSON.stringify(data));
        res.end("aaaaaaaaaa");
        res.end(util.inspect(post));
    });
}).listen(8889);