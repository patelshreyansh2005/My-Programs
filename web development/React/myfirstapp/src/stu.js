const stu = () => {

    const student = [
        {
            "id": 1,
            "name": "John Doe",
            "age": 20,
            "grade": "A",
            "address": "123 Main St, City",
            "image": "https://example.com/images/john_doe.jpg"
        },
        {
            "id": 2,
            "name": "Jane Smith",
            "age": 19,
            "grade": "B",
            "address": "456 Elm St, Town",
            "image": "https://example.com/images/jane_smith.jpg"
        },
        {
            "id": 3,
            "name": "Alex Johnson",
            "age": 21,
            "grade": "A-",
            "address": "789 Oak St, Village",
            "image": "https://example.com/images/alex_johnson.jpg"
        },
        {
            "id": 4,
            "name": "Emily Brown",
            "age": 22,
            "grade": "B+",
            "address": "321 Pine St, Hamlet",
            "image": "https://example.com/images/emily_brown.jpg"
        },
        {
            "id": 5,
            "name": "Michael Lee",
            "age": 18,
            "grade": "A",
            "address": "555 Maple Ave, Suburb",
            "image": "https://example.com/images/michael_lee.jpg"
        },
        {
            "id": 6,
            "name": "Sarah Williams",
            "age": 19,
            "grade": "B",
            "address": "777 Birch Rd, Countryside",
            "image": "https://example.com/images/sarah_williams.jpg"
        },
        {
            "id": 7,
            "name": "David Martinez",
            "age": 20,
            "grade": "B+",
            "address": "888 Pine St, Urban",
            "image": "https://example.com/images/david_martinez.jpg"
        },
        {
            "id": 8,
            "name": "Lily Johnson",
            "age": 18,
            "grade": "A-",
            "address": "999 Oak St, Downtown",
            "image": "https://example.com/images/lily_johnson.jpg"
        },
        {
            "id": 9,
            "name": "Ethan Anderson",
            "age": 21,
            "grade": "A",
            "address": "444 Elm St, Riverside",
            "image": "https://example.com/images/ethan_anderson.jpg"
        },
        {
            "id": 10,
            "name": "Olivia Taylor",
            "age": 22,
            "grade": "B",
            "address": "222 Maple Rd, Lakeside",
            "image": "https://example.com/images/olivia_taylor.jpg"
        }
    ];

    const stu1 = student.map((stu1) => (
        <div className="col-3">
            <div className="card m-1 p-2">
                <img src={stu1.image} className="card-img-top" />
                <div className="card-body">
                    <p className="card-text d-flex flex-column">
                        <div>{stu1.name}</div>
                        <div>{stu1.id}</div>
                        <div>{stu1.age}</div>
                        <div>{stu1.grade}</div>
                        <div>{stu1.address}</div>
                    </p>
                </div>
            </div>
        </div>
    ));

    return <div className="row m-3">{stu1}</div>;
}

export default stu;