import './HomePage.css'
import PictureDisplay from './PictureDisplay'
import { useEffect, useState } from 'react'

let HomePage = () => {

    let [pictureData, setPictureData] = useState([])

    let getPictures = async () => {
        let req = await fetch('https://gladbookclub.com/pictures')
        let res = await req.json()
        console.log(res)
        setPictureData(res)
    }

    useEffect(() => {
        getPictures()
    },[])
// fall image here
    return(
        <div id='home-page'>
            <div>
                <h1 id='home-header'>Our Gladbook Club</h1>
            </div>
            <div className='gallery-div'>
                <PictureDisplay pictureData={pictureData} />
            </div>
            <div id='blurb'>
                <p>{'The “Gladbook Club” (so named because it originated as a neighborhood club on Gladbrook Road in Pittsford, NY) held its first meeting in September of 2000. The group was created by Guttenberg Book Store owner, Martha Kelly (of blessed memory) and Susan Baruch - who still runs it to this day.'}</p> 
                <p>{'Early ground rules (set by Martha with tongue in cheek) included: “Mosquito discussion, while inevitable, should not occupy the entire evening” and “Excessive house cleaning is forbidden.” (See the original note below.)'}</p><p>{'Over the past 20+ years, the Gladbook Club has read over 200 books and welcomed 35+ women into its fold, with about 10 active members at any one time. Favorite books have included: The Red Tent, A Walk in the Woods, A Fine Balance, Let the Great World Spin, A Gentleman in Moscow, and Second Suns.'}</p>
            </div>
            <div id='letter'>
                <h2>Our Humble Beginnings:</h2>
                <img src='https://i.imgur.com/LDOQIbz.png' />
            </div>
            {/* <div id='edit-button'>
                <button>Edit Page</button>
            </div> */}
            <div id='footer-div'>
                <p>For more information, contact Susan Baruch at: sbaruch@hotmail.com</p>
            </div>
            <img className='bg' src='https://www.healthytrees.com/wp-content/uploads/2019/09/The-Best-Trees-to-Plant-for-Fall-Colors.jpg'></img>
        </div>
    )
}

export default HomePage