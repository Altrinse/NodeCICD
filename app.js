const express = require("express");
const port = 3000;

const app = express();

app.get('/', (req,res)=> {
	res.send('<h1> Welcome to new app</h1>');
})


app.listen(3000,()=>{
	console.log('demo app is listening to : ${port}');
})