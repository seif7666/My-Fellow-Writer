import IMAGE from "../../images/writer.png";
import Login from "./components/Login";
import Title from "./components/Title";

const Home = () => {
  return (
    <div
      style={{
        margin:'0px',
        padding:'0px',
        backgroundImage: `url(${IMAGE})`,
        height:'100%',
        width:'100%'
      }}
    >
      <div className="" id="title-container">
        <div className="row"> 
          <div className="col-sm-10 offset-sm-1 col-md-5 offset-md-1 ">
            <Title/>
          </div>
          <div className="col-sm-12 col-md-6">
            <Login />
          </div>

        </div>

      </div>
    </div>
  );
};

export default Home;
