import React from "react";
import 'bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap-icons/font/bootstrap-icons.css';
import './css/styles.css';
import './css/commonComponents.css';
import Home from "./pages/Home/Home";
import PageRoutes from "./routers/PageRoutes";

const App= ()=>{
    return(
        <PageRoutes />
    )
}

export default App;