import React from "react";
import {BrowserRouter, Route, Routes} from 'react-router-dom';
import Home from "../pages/Home/Home";
import Main from "../pages/Main/Main";

export const ROUTER_LINKS={
    HOME:'/',
    MAIN:'/main'
}

const PageRoutes= ()=>{
    return (
        <BrowserRouter>
            <Routes>
                <Route path={ROUTER_LINKS.HOME} element={<Main/>} />
                <Route path={ROUTER_LINKS.MAIN} element={<Main/>} />
            </Routes>
        </BrowserRouter>
    )
}

export default PageRoutes;