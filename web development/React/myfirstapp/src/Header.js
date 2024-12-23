import {Link} from 'react-router-dom';
const Header = () => {
    return (
        <>
            <nav class="navbar navbar-expand-lg bg-body-tertiary bg-info-subtle">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <Link to="/" className="nav-link active">Home</Link>
                            </li>
                            <li class="nav-item">
                                <Link to="/Fac" className="nav-link">Fac</Link>
                            </li>
                            <li class="nav-item">
                                <Link to= "/Stu" className="nav-link">Stu</Link>
                            </li>
                        </ul>
                        <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                            <button class="btn btn-outline-info" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </>
    )
}

export default Header;