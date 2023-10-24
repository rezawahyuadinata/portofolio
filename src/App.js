import Navbar from "./components/navbar";
import Footer from "./components/footer";
import Header from "./components/header";
import Project from "./components/project";
import Skill from "./components/skill";
import About from "./components/about";
import Contact from "./components/contact";

function App() {
  return (
    <div>
      <Navbar />
      <Header />
      <About />
      <Skill />
      <Project />
      <Contact />
      <Footer /> 
    </div>
  );
}

export default App;
