<template>
  <div class="app">
    <!-- Header -->
    <header class="header">
      <nav class="nav">
        <div class="nav-brand">
          <h1>Felix Grabler</h1>
        </div>
        <ul class="nav-links">
          <li><a href="#about" @click="activeSection = 'about'">About</a></li>
          <li><a href="#education" @click="activeSection = 'education'">Education</a></li>
          <li><a href="#experience" @click="activeSection = 'experience'">Experience</a></li>
          <li><a href="#projects" @click="activeSection = 'projects'">Projects</a></li>
          <li><a href="#contact" @click="activeSection = 'contact'">Contact</a></li>
        </ul>
      </nav>
    </header>

    <!-- Main Content -->
    <main class="main">
      <!-- Hero Section -->
      <section id="hero" class="hero">
        <div class="hero-content">
          <div class="hero-image">
            <img src="/Felix.jpg" alt="Felix Grabler" class="profile-img">
          </div>
          <div class="hero-text">
            <h1>Felix Grabler</h1>
            <h2>Software Developer & Technology Enthusiast</h2>
            <p>Computer Science student at TU Graz. I'm passionate about technology and software development, and I'm excited to explore new opportunities in my future career.</p>
            <div class="hero-buttons">
              <button class="btn btn-primary" @click="activeSection = 'contact'">Get In Touch</button>
              <button class="btn btn-secondary" @click="activeSection = 'projects'">View Projects</button>
            </div>
          </div>
        </div>
      </section>

      <!-- About Section -->
      <section id="about" class="section" :class="{ active: activeSection === 'about' }">
        <div class="container">
          <h2>About Me</h2>
          <div class="about-content">
            <div class="about-text">
              <p>
                Hello! I'm Felix Grabler, a passionate software developer with some text here that needs to be reworked.
              </p>
              <p>
                My journey in technology started early, and I've been continuously learning and growing 
                in this ever-evolving field.
              </p>
            </div>
            <div class="about-skills">
              <h3>Technical Skills</h3>
              <div class="skills-grid">
                <div class="skill-item">C/C++</div>
                <div class="skill-item">Java</div>
                <div class="skill-item">Python</div>
                <div class="skill-item">Vue.js</div>
                <div class="skill-item">Docker</div>
                <div class="skill-item">Kubernetes</div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Education Section -->
      <section id="education" class="section" :class="{ active: activeSection === 'education' }">
        <div class="container">
          <h2>Education</h2>
          <div class="timeline">
            <div class="timeline-item">
              <div class="timeline-date">2026 - 2028 (planned)</div>
              <div class="timeline-content">
                <h3>TU Graz</h3>
                <h4>Master's Degree in Computer Science</h4>
                <p>
                  Planned continuation of studies in advanced computer science topics and specialized research areas.
                </p>
              </div>
            </div>
            <div class="timeline-item">
              <div class="timeline-date">2023 - 2026 (current)</div>
              <div class="timeline-content">
                <h3>TU Graz</h3>
                <h4>Bachelor's Degree in Computer Science</h4>
                <p>
                  Currently pursuing bachelor's degree with focus on software engineering, operating systems, 
                  algorithms, AI and machine learning, and advanced mathematics. Gaining experience in various programming languages and development methodologies.
                </p>
              </div>
            </div>
            <div class="timeline-item">
              <div class="timeline-date">2017 - 2022</div>
              <div class="timeline-content">
                <h3>HTBLA Kaindorf</h3>
                <h4>Matura in Computer Science</h4>
                <p>
                  Completed the curriculum with a specialization in IT Security in an "English as Working Language" class. 
                  Acquired skills in programming (C, Java), operating systems, databases (Oracle-oriented), networking, and various modern technologies.
                  Served as Schulsprecher (student representative), representing the student body and facilitating communication between students and administration.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Experience Section -->
      <section id="experience" class="section" :class="{ active: activeSection === 'experience' }">
        <div class="container">
          <h2>Experience</h2>
          <div class="experience-grid">
            <div class="experience-item">
              <img src="/kaindorfgames.svg" alt="Kaindorf Games Logo" class="company-logo">
              <div class="experience-content">
                <h3>Esports Tournament Organizer & Developer</h3>
                <h4>Kaindorf Games</h4>
                <p class="experience-date">Dec 2020 - present</p>
                <p class="experience-description">
                  In a team of 7, we organize esports tournaments at schools, at the VulkanLAN or at the ButtonFestival. 
                    We also program our own tournament management platform 
                    [<strong><a href="https://kaindorf-games.at" target="_blank" style="text-decoration: underline; color: inherit; cursor: pointer;">kaindorf-games.at</a></strong>].
                </p>
              </div>
            </div>
            <div class="experience-item">
              <img src="/eet.png" alt="EET Logo" class="company-logo">
              <div class="experience-content">
                <h3>Software Developer</h3>
                <h4>EET - Efficient Energy Technology</h4>
                <p class="experience-date">May 2023 - July 2024</p>
                <p class="experience-description">
                  Worked with <strong>Python</strong>, <strong>Docker</strong>, <strong>Vue.js</strong>, data processing, and automation on <strong>Linux</strong> systems using <strong>Scrum</strong> methodologies.
                </p>
              </div>
            </div>
            <div class="experience-item">
              <img src="/roteskreuz.jpg" alt="Red Cross Logo" class="company-logo">
              <div class="experience-content">
                <h3>Ambulance Service (Zivildienst)</h3>
                <h4>Österreichisches Rotes Kreuz</h4>
                <p class="experience-date">Aug 2022 - Apr 2023</p>
                <p class="experience-description">
                  Provided emergency medical services. In addition to that, I was able to help my department with my programming skills in various tasks/projects.
                </p>
              </div>
            </div>
            <div class="experience-item">
              <img src="/ssi_schaefer.png" alt="SSI Schäfer Logo" class="company-logo">
              <div class="experience-content">
                <h3>Software Developer (Diplomarbeit Internship)</h3>
                <h4>SSI Schäfer IT Solutions</h4>
                <p class="experience-date">May 2021 - Mar 2022</p>
                <p class="experience-description">
                  Programmed in <strong>Flutter</strong> and <strong>Dart</strong> using <strong>Android Studio</strong>, and did project management with <strong>Jira</strong>.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Projects Section -->
      <section id="projects" class="section" :class="{ active: activeSection === 'projects' }">
        <div class="container">
          <h2>Projects</h2>
          <div class="projects-grid">
            <div class="project-card">
              <h3>Grabler.me Hub</h3>
              <p>A comprehensive web platform with multiple services and Docker integration.</p>
              <div class="project-tech">
                <span class="tech-tag">Vue.js</span>
                <span class="tech-tag">Docker</span>
                <span class="tech-tag">Nginx</span>
              </div>
            </div>
            <div class="project-card">
              <h3>Namo Application</h3>
              <p>A full-stack application with backend and frontend components.</p>
              <div class="project-tech">
                <span class="tech-tag">Python</span>
                <span class="tech-tag">Vue.js</span>
                <span class="tech-tag">PostgreSQL</span>
              </div>
            </div>
            <div class="project-card">
              <h3>Personal Website</h3>
              <p>This very website built with Vue.js and modern web technologies.</p>
              <div class="project-tech">
                <span class="tech-tag">Vue.js</span>
                <span class="tech-tag">Vite</span>
                <span class="tech-tag">CSS3</span>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Contact Section -->
      <section id="contact" class="section" :class="{ active: activeSection === 'contact' }">
        <div class="container">
          <h2>Get In Touch</h2>
          <div class="contact-content">
            <div class="contact-info">
              <h3>Contact Information</h3>
              <div class="contact-item">
                <strong>Email:</strong> felix@grabler.me
              </div>
              <div class="contact-item">
                <strong>Location:</strong> Your Location (Placeholder)
              </div>
              <div class="contact-item">
                <strong>LinkedIn:</strong> https://www.linkedin.com/in/felix-grabler-549304202/
              </div>
              <div class="contact-item">
                <strong>GitHub:</strong> github.com/FelixGrabler
              </div>
            </div>
            <div class="contact-form">
              <h3>Send a Message</h3>
              <form @submit.prevent="submitForm">
                <div class="form-group">
                  <label for="name">Name</label>
                  <input type="text" id="name" v-model="contactForm.name" required>
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="email" id="email" v-model="contactForm.email" required>
                </div>
                <div class="form-group">
                  <label for="message">Message</label>
                  <textarea id="message" v-model="contactForm.message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
              </form>
            </div>
          </div>
        </div>
      </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <p>&copy; 2025 Felix Grabler. All rights reserved.</p>
      </div>
    </footer>
  </div>
</template>

<script>
import { ref } from 'vue'

export default {
  name: 'App',
  setup() {
    const activeSection = ref('about')
    const contactForm = ref({
      name: '',
      email: '',
      message: ''
    })

    const submitForm = () => {
      // Placeholder for form submission
      alert('Thank you for your message! This is a placeholder - form submission will be implemented later.')
      contactForm.value = { name: '', email: '', message: '' }
    }

    return {
      activeSection,
      contactForm,
      submitForm
    }
  }
}
</script>
