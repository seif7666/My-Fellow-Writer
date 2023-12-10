import React from "react";
import { Link, Outlet } from "react-router-dom";
import { ROUTER_LINKS } from "../../../routers/PageRoutes";
const Login = () => {
  return (
    <div>
        <form className="form-group" id="signIn-form">
            <div className="form-control" style={{background:'transparent', border:'none', textAlign:'center'}}>
          <input
            className="form-control"
            type="email"
            placeholder="Username"
          />
          <input
            className="form-control"
            type="password"
            placeholder="Password"
          />
      <Link to={ROUTER_LINKS.MAIN}>
      <button type="submit" className="btn form-control" id="sign-in-btn">
        Sign In
      </button>
        <p id="sign-up-p" className="form-control">Your first time? <span id="sign-up-span">Let's Sign Up!</span></p>
      </Link>
          </div>
        </form>
        <Outlet />
    </div>
  );
};

export default Login;
