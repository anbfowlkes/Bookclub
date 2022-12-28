import { Link, useNavigate } from 'react-router-dom'
import './Navbar.css'

let Navbar = ( {background,setBackground} ) => {
    return(
        <div id='navbar'>
                <div className='nav-item'>
                    <li onClick={() => setBackground(0)}>
                        <Link to="/">Home</Link>
                    </li>
                </div>
                <div  className='nav-item'>
                    <li onClick={() => setBackground(1)}>
                        <Link to="/futurebooks">Future Books</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(2)}>
                        <Link to="/books">Past Books</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li onClick={() => setBackground(3)} >
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