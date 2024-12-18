import Header from './Header';
import Start from './counter';
import {Outlet} from 'react-router-dom';
const Body = () => {
    return (
        <>
            <Header />
            <Outlet />
            <Start />
        </>
    );
}

export default Body;