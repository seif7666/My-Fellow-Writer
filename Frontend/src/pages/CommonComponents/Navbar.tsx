import React from "react";
import Drawer from "./Drawer";

export default class Navbar extends React.Component {
  constructor(props: any) {
    super(props);
  }

  render(): React.ReactNode {
    return (
      <nav id="nav-div" className="navbar container-fluid sticky-top">
        <div className="row" style={{width:'100vw'}}>
          <div className="col-1 col-lg-2">
            <Drawer />
          </div>
          <div id="nav-username-div" className="col-6 col-lg-6 text-start">
            <span>Welcome Username!</span>
          </div>
          <div className="col-5 offset-lg-2 col-lg-2">
            <div className="d-flex flex-row text-end">
              <div className="flex-fill">
                <i className="bi bi-question-lg nav-icon"></i>
              </div>
              <div className="flex-fill">
                <i className="bi bi-gear-fill nav-icon"></i>{" "}
              </div>
              <div className="flex-fill">
                <i className="bi bi-box-arrow-right nav-icon"></i>{" "}
              </div>
            </div>
          </div>
        </div>
      </nav>
    );
  }
}
