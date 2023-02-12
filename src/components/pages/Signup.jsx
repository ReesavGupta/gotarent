import React from 'react'
import "./signup.css"
const logo = require('../static/logo.png')
const bluebg = require('../static/signup.png')
const Si = () => {
    return (
        <div className='m-login'>
            <div className="secondary">
                <div className="blue">
                    <img src={bluebg} alt="" id='bluebg' />
                </div>
                <div className="log">
                <img src={logo} alt="" />
                </div>
                <div className="text">
                    <p>"Find your next home away with just a few clicks, start your journey now!"</p>
                </div>
                <div className="form">
                    <form action="/" method="">
                    <fieldset>
                            <legend className='legend'>Name</legend>
                            <input type="Text" name="#" id="password" placeholder='James Morgan' />
                        </fieldset>
                        <fieldset>
                            <legend className='legend'>Email</legend>
                            <input type="email" name="#" placeholder='contact@gotarent.in' />
                        </fieldset>
                        <fieldset>
                            <legend className='legend'>Password</legend>
                            <input type="password" name="#" id="password" placeholder='******' />
                        </fieldset>
                        <fieldset>
                            <legend className='legend'>Confirm Password</legend>
                            <input type="password" name="#" id="password" placeholder='******' />
                        </fieldset>
                        <div className="btn">
                            <button type='submit'>Signup</button>
                        </div>
                    </form>
                </div>
                <div className="anc">
                    <p>Not a user yet!</p>
                    <a href="\signup">signup here</a>
                </div>
            </div>
        </div>
    )
}

export default Si
