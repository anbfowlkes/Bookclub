import { Link, useNavigate } from 'react-router-dom'
import './Navbar.css'

let Navbar = ( {background,setBackground} ) => {
    return(
        <div id='navbar'>
                <div className='nav-item'>
                    <li onClick={() => setBackground(0)}>
                        <Link to="/">HOME</Link>
                    </li>
                </div>
                <div  className='nav-item'>
                    <li onClick={() => setBackground(1)}>
                        <Link to="/future-books">FUTURE BOOKS</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(2)}>
                        <Link to="/past-books">PAST BOOKS</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(3)} >
                        <Link to="/club-members">MEMBERS</Link>
                    </li>
                </div>
                {/* <div className='nav-item'>
                    <li>
                        <Link to="/history">Humble Beginnings</Link>
                    </li>
                </div> */}
        </div>
    )
}

export default Navbar