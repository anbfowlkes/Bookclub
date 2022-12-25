import './App.css';
import Books from './files/Books'
import { useState, useEffect, useRef } from 'react'
import { Routes, Route, BrowserRouter, useNavigate } from 'react-router-dom';
import Navbar from './files/Navbar'
import HomePage from './files/HomePage'
import Members from './files/Members'

let App = () => {

  return (
    <div>
      

      <BrowserRouter>
        <Navbar />
          <Routes>
            <Route path='/' element={<HomePage />} />
            <Route path='/books' element={<Books />} />
            <Route path='/members' element={<Members />} />
          </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
