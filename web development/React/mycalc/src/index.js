import React, { useState } from 'react';
import { Link, BrowserRouter, Routes, Route, useParams } from 'react-router-dom';
import ReactDOM from 'react-dom/client';
import './index.css';
import { useEffect } from 'react';
import Calc from './Calc';
const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<>
  <Calc />
</>);
