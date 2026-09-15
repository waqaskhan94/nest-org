const http=require('http'),fs=require('fs'),path=require('path');
const root=__dirname;
const types={'.html':'text/html','.css':'text/css','.js':'application/javascript','.jpeg':'image/jpeg','.jpg':'image/jpeg','.avif':'image/avif','.png':'image/png','.xml':'application/xml','.xsl':'application/xslt+xml','.svg':'image/svg+xml','.webmanifest':'application/manifest+json'};
http.createServer((req,res)=>{
  let p=decodeURIComponent(req.url.split('?')[0]);
  if(p==='/')p='/index.html';
  let fp=path.join(root,p);
  // clean-URL: if no extension and file+.html exists, serve that
  if(!path.extname(fp)&&fs.existsSync(fp+'.html'))fp=fp+'.html';
  fs.readFile(fp,(e,data)=>{
    if(e){res.writeHead(404);res.end('404');return;}
    res.writeHead(200,{'Content-Type':types[path.extname(fp)]||'application/octet-stream'});
    res.end(data);
  });
}).listen(8080,()=>console.log('serving on 8080'));
