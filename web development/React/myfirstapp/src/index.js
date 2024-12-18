import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import Fac from './fac';
import Stu from './stu';
import Body from './body';
import { BrowserRouter, Route, Routes, Link} from 'react-router-dom';
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <>

    <BrowserRouter>
      <Routes>
        <Route path='/' element = {<Body />}>
          <Route path='/Fac' element ={<Fac />} />
          <Route path='/Stu' element = {<Stu />} />
        </Route>
      </Routes>
    </BrowserRouter>
  </>
);
