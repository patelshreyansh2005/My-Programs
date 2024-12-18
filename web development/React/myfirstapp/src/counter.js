import { useState } from 'react';
const Start = () => {
    const [c, setInt] = useState(null);
    const [count, setCount] = useState(0);
    const a = setInterval((temp) => {
        setCount(temp + 1);
    }, 1000);
    setInt(a);
    const Stop = () => {
        clearInterval(c);
    }
    return (
        <>
            <div className=''>{count}</div>
        </>
    )
}
export default Start;