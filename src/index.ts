import express from 'express';

const app = express();
app.use(express.json());

const port = 3000;
const host = '0.0.0.0'


app.get('/', async (req, res) => {
	res.send('Hello World!!!!');
})

app.listen(port, host, () => {
	console.log(`Example app listening at http://${host}:${port}`);
})