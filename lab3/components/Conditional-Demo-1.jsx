function ShinyButton() {
    const handleClick = () => {
        alert("You Clicked me! I'm John Philippe Conanan");
    }
    return(
        <button onClick={handleClick}>
            Click This Button!
        </button>
    )
}


export default ShinyButton