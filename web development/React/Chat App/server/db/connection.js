const mongoose = require('mongoose');

// const url = `mongodb+srv://shreydemo1985:demoshrey@1985@cluster0.hmf3b.mongodb.net/chatapp?retryWrites=true&w=majority&appName=Cluster0`;
const url = `mongodb+srv://shreydemo1985:demoshrey%401985@cluster0.hmf3b.mongodb.net/chatapp?retryWrites=true&w=majority&appName=Cluster0`;
// const url = `mongodb+srv://${process.env.DB_USERNAME}:${process.env.DB_PASSWORD}@cluster0.zw6hky5.mongodb.net/?retryWrites=true&w=majority`;

mongoose.connect(url, {
    useNewUrlParser: true, 
    useUnifiedTopology: true
}).then(() => console.log('Connected to DB')).catch((e)=> console.log('Error', e))