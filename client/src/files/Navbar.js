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
                        <Link to="/futurebooks">FUTURE BOOKS</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(2)}>
                        <Link to="/books">PAST BOOKS</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(3)} >
                        <Link to="/members">MEMBERS</Link>
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