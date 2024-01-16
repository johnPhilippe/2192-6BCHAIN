//Name: John Philippe D. Conanan
import { useState } from 'react'
import './App.css'
import Hello from './components/Hello'
import Welcome from'./components/Welcome'
import ParentComponent from './components/ParentComponent'
import TodoList from './components/Todolist'
import MovieList from './components/MovieList'
import BookList from './components/BookList'

function App() {

  return (
    <>
    <div className="center">
      <h3>John Philippe Conanan</h3>
      <div className="grid-container">
        <div className="grid-item"><TodoList/></div>
        <div className="grid-item"><MovieList/></div>
        <div className="grid-item"><BookList/></div>
      </div>
    </div>
    
    </>
  )
}

export default App
