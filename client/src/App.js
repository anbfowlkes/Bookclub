import './App.css';
import Books from './files/Books'
import { useState, useEffect, useRef } from 'react'
import { Routes, Route, BrowserRouter, useNavigate } from 'react-router-dom';
import Navbar from './files/Navbar'
import HomePage from './files/HomePage'
import Members from './files/Members'
import FutureBooks from './files/FutureBooks'

let App = () => {

  let [background, setBackground] = useState(0)
  let [backgroundImg, setBackgroundImg] = useState('https://assets.puzzlefactory.com/puzzle/450/520/original.jpg')

  let imageArray = ['https://www.healthytrees.com/wp-content/uploads/2019/09/The-Best-Trees-to-Plant-for-Fall-Colors.jpg', 'https://st2.depositphotos.com/1393398/9138/i/950/depositphotos_91382138-stock-photo-winter-alley-with-snow-covered.jpg', 'https://assets.puzzlefactory.com/puzzle/450/520/original.jpg','https://jw-webmagazine.com/wp-content/uploads/2019/06/jw-5d15f032182f45.92816921.jpeg']

  return (
    <div id='app-div' >

      <BrowserRouter>
        <Navbar background={background} setBackground={setBackground} />
          <Routes>
            <Route path='/' element={<HomePage />} />
            <Route path='/books' element={<Books />} />
            <Route path='/members' element={<Members />} />
            <Route path='/futurebooks' element={<FutureBooks />} />
          </Routes>
      </BrowserRouter>
      
      {background === 0 ? <img className='bg' src='https://www.healthytrees.com/wp-content/uploads/2019/09/The-Best-Trees-to-Plant-for-Fall-Colors.jpg'></img> : null}
      {background === 1 ? <img className='bg' src='https://st2.depositphotos.com/1393398/9138/i/950/depositphotos_91382138-stock-photo-winter-alley-with-snow-covered.jpg'></img> : null}
      {/* {background === 2 ? <img className='bg' src='https://assets.puzzlefactory.com/puzzle/450/520/original.jpg'></img> : null} */}
      {background === 2 ? <img className='bg' src='https://upload.wikimedia.org/wikipedia/commons/5/57/The_Flower_Fields_flowers.jpg'></img> : null}
      {/* {background === 2 ? <img className='bg' src='https://cdn.shopify.com/s/files/1/0620/2749/7724/products/flowery-fields-forever-mix-1_95a679d2-2ade-40f1-9dde-4e66b1276b40.jpg?v=1653663729'></img> : null} */}
      {background === 3 ? <img className='bge' src='https://jw-webmagazine.com/wp-content/uploads/2019/06/jw-5d15f032182f45.92816921.jpeg'></img> : null}
      
    </div>
  );
}

export default App;
