import { useState } from 'react'


function Q1(props){
    const Q1A = props.Q1A
        if(Q1A){
            return(

                <h3 id ="1"class="True">Correct!</h3>
            );
        } return(
            <h3 id ="1" class="False">Incorrect!</h3>
        );



}

function Q2(props){
    const Q2A = props.Q2A
        if(Q2A){
            return(
                <h3 id ="2"class="True">Correct!</h3>
            );
        } return(
            <h3 id ="2" class="False">Incorrect!</h3>
        );


}

function Q3(props){
    const Q3A = props.Q3A
        if(Q3A){
            return(
                <h3 id ="3" class="True">Correct!</h3>
            );
        } return(
            <h3 id ="3" class="False">Incorrect!</h3>
        );
}

export default function QuizAns(){
 
        const[isHidden, setIsHidden] = useState(true);

        const handleClick = () => {
            setIsHidden(!isHidden);
        };
    
    return(
        
        <div>
            <h1>The Bible Quiz</h1>
            <h3>The Bible consists of the Old and New Testaments</h3>
            {isHidden ? null : <Q1 Q1A={true}/>}

            <h3>Moses led the Israealites out of Egypt</h3>
            {isHidden ? null : <Q2 Q2A={true}/>}

            <h3>The Sermon on the Mount is found in the Book of Luke</h3>
            {isHidden ? null : <Q3 Q3A={false}/>}

            <button onClick={handleClick}>
            Show/hide Answers
            </button>

        </div>
    );
}