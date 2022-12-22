import './App.css';
import Books from './files/Books'
import { useState, useEffect, useRef } from 'react'
import { Routes, Route, BrowserRouter, useNavigate } from 'react-router-dom';
import Navbar from './files/Navbar'
import HomePage from './files/HomePage'

let App = () => {
  return (
    <div>
      {/* <Books /> */}

      {/* <BrowserRouter></BrowserRouter> */}

      <BrowserRouter>
        <Navbar />
          <Routes>
            <Route path='/' element={<HomePage />} />
            <Route path='/books' element={<Books />} />
          </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
