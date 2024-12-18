const express = require('express');
const mongoose = require('mongoose');
const app = express();
const port = 3030;

app.use(express.json());

const mongooseURL = 'mongodb+srv://shrey2005:shrey2005@cluster0.2xfp9zm.mongodb.net/yourdbname?retryWrites=true&w=majority';

mongoose.connect(mongooseURL, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
})
    .then(() => {
        console.log('MongoDB connected successfully');
        app.listen(port, () => {
            console.log('Server is running on port ' + port);
        });
    })
    .catch((error) => {
        console.error('MongoDB connection error:', error);
    });

const schema = new mongoose.Schema({
    name: String,
    rollno: Number,
    sem: Number
});

const Student = mongoose.model("Student", schema);

app.get("/", async (req, res) => {
    try {
        const students = await Student.find();
        res.json(students);
    } catch (error) {
        console.error('Error:', error);
    }
});

app.get("/:id", async (req, res) => {
    try {
        const student = await Student.find({ rollno: req.params.id });
        res.json(student);
    } catch (error) {
        console.error('Error:', error);
    }
});

app.post("/", async (req, res) => {
    try {
        const newStudent = new Student(req.body);
        const savedStudent = await newStudent.save();
        res.json(savedStudent);
    } catch (error) {
        console.error('Error:', error);
    }
});
