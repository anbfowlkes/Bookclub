import { Link, useNavigate } from 'react-router-dom'

let Navbar = () => {
    return(
        <div id='navbar'>
            <div className='nav-item'>
                <li>
                    <Link to="/">Home</Link>
                </li>
                <div className='nav-item'>
                    <li>
                        <Link to="/books">View Past Books</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li>
                        <Link to="/upcoming-books">View Future Books</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li>
                        <Link to="/members">Members</Link>
                    </li>
                </div>
                <div className='nav-item'>
                    <li>
                        <Link to="/history">Humble Beginnings</Link>
                    </li>
                </div>
            </div>
        </div>
    )
}

export default Navbar