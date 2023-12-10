const Drawer = () => {
  //<i class="bi bi-list"></i>
  return (
    <nav className="navbar navbar-expand-lg bg-body-tertiary fixed-top">
      <a className="navbar-brand" href="#">
        Offcanvas navbar
      </a>
      <button
        className="navbar-toggler"
        type="button"
        data-bs-toggle="offcanvas"
        data-bs-target="#navbarOffcanvasLg"
        aria-controls="navbarOffcanvasLg"
        aria-label="Toggle navigation"
      >
        <span className="navbar-toggler-icon"></span>
      </button>
      <div
        className="offcanvas offcanvas-end"
        // tabIndex="-1"
        id="navbarOffcanvasLg"
        aria-labelledby="navbarOffcanvasLgLabel"
      >
        ...
      </div>
    </nav>
  );
};

export default Drawer;
