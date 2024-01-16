import React from "react"

export default class TodoList extends React.Component {
    render() {
        return(
            <div>
                <h2>Todo List</h2>
                <ol>
                    <li>Clean Porch​</li>
                    <li>Wash Car​</li>
                    <li>Attend BCHAIN Class​</li>
                </ol>
            </div>
        )
    }
}