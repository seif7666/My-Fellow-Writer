import IMAGE from "../../images/writer.png";
import Login from "./components/Login";
import Title from "./components/Title";

const Home = () => {
  return (
    <div
      style={{
        margin:'0px',
        padding:'0px',
        height:'100vh',
        width:'100vw',
        background: `linear-gradient(0deg, rgba(0, 0, 0, 0.38) 0%, rgba(0, 0, 0, 0.38) 100%), url(${IMAGE}), lightgray 50% / cover no-repeat`,
        resize: 'both',
        backgroundRepeat:'no-repeat'
      }}
    >
      <div className="container-fluid" id="title-container">
        <div className="row"> 
          <div className="col-md-10 offset-md-1 col-lg-5 offset-lg-1 ">
            <Title/>
          </div>
          <div className="col-md-12 col-lg-6" id="login-row">
            <Login />
          </div>

        </div>

      </div>
    </div>
  );
};

export default Home;
