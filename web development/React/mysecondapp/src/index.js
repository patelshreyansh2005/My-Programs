import React, { useState } from 'react';
import { Link, BrowserRouter, Routes, Route, useParams, useNavigate, useNavigation } from 'react-router-dom';
import ReactDOM from 'react-dom/client';
import './index.css';
import { useEffect } from 'react';
const root = ReactDOM.createRoot(document.getElementById('root'));

// const api = "https://650a6758dfd73d1fab0854b0.mockapi.io/Faculty";
const api = "http://localhost:3030/";

const Faculties = () => {

  const [fac, setfac] = useState([]);
  useEffect(() => {
    fetch(api)
      .then(res => res.json())
      .then(res => setfac(res));
  }, []);

  const facFormeted = fac.map((fac1) => {
    return (<>
      <div className='col-3 p-3'>
        <div class="card">
          <img src={fac1.avatar} className="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">{fac1.Name}</h5>
            <p class="card-text">{fac1.Age}</p>
            <Link to={"/" + fac1.id} className="btn btn-primary">Detail</Link>
          </div>
        </div>
      </div>
    </>);
  })

  return (<>
    <Link to={"/addFaculty"} className='btn btn-primary m-3' > Add Faculty</Link>
    <div className='container'>
      <div className='row'>{facFormeted}</div>
    </div>
  </>);
}

const DetaliFac = () => {
  const { id } = useParams();
  const [data, setData] = useState({});
  const nav = useNavigate();
  useEffect(() => {
    fetch(api + "/" + id).then(res => res.json()).then(res => setData(res));
  }, []);
  return (<>
    <div className='container d-flex justify-content-center'>
      <div class="card col-4 m-3">
        <img src={data.avatar} class="card-img-top" alt="..." />
        <div class="card-body">
          <h5 class="card-title">{data.Name}</h5>
          <p class="card-text">
            <div>{data.Age}</div>
            <div>{data.id}</div>
          </p>
          <Link to={"../"} className="btn btn-primary">Back</Link>
          <Link onClick={() => {
            fetch(api + "/" + id, { method: "DELETE" }).then((res) => { nav("/") });
          }} className="btn btn-danger">Delete</Link>
        </div>
      </div>
    </div>
  </>);
}

const AddFaculty = () => {
  const [data, setData] = useState({});
  return (<>
    <form className='d-flex justify-content-center align-items-center min-vw-100 min-vh-100'>
      <div class="form-row w-50 flex-column d-flex justify-content-center align-items-center">
        <div class="col-3">
          <input type="text" class="form-control" placeholder="Name" onChange={(e) => {setData({...data,Name:e.target.value})}} />
        </div>
        <div class="col-3">
          <input type="number" class="form-control" placeholder="Age" onChange={(e) => {setData({...data,Age:e.target.value})}} />
        </div>
        <div class="col-3">
          <input type="number" class="form-control" placeholder="Id" onChange={(e) => {setData({...data,id:e.target.value})}} />
        </div>
        <div class="col-3">
          <input type="text" class="form-control" placeholder="Image" onChange={(e) => {setData({...data,avatar:e.target.value})}} />
        </div>
        <div class="col-3">
          <button className='' onClick={()=>{}}>Add Faculty</button>
        </div>
      </div>
    </form>
  </>);
}

root.render(<>

  <BrowserRouter>
    <Routes>
      <Route path='/:id' element={<DetaliFac />} />
      <Route path='/addFaculty' element={<AddFaculty />} />
      <Route path='/' element={<Faculties />} />
    </Routes>
  </BrowserRouter>
</>);
