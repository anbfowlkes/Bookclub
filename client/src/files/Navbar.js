import { Link, useNavigate } from 'react-router-dom'
import './Navbar.css'

let Navbar = ( {background,setBackground} ) => {
    return(
        <div id='navbar'>
                <div onClick={() => setBackground(0)} className='nav-item'>
                    <li>
                        <Link to="/">Home</Link>
                    </li>
                </div>
                <div onClick={() => setBackground(1)}  className='nav-item'>
                    <li>
                        <Link to="/futurebooks">View Future Books</Link>
                    </li>
                </div>
                <div onClick={() => setBackground(2)} className='nav-item'>
                    <li>
                        <Link to="/books">View Past Books</Link>
                    </li>
                </div>
                <div onClick={() => setBackground(3)} className='nav-item'>
                    <li>
                        <Link to="/members">Members</Link>
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