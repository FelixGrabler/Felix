# Felix Personal Website

A modern, responsive personal website built with Vue.js showcasing Felix Grabler's professional profile, education, experience, and projects.

## Features

- 🎨 Modern, responsive design
- 📱 Mobile-friendly interface
- 🔧 Built with Vue.js 3 and Vite
- 🐳 Docker containerization
- 📧 Contact form (placeholder)
- 🎯 Single-page application with smooth navigation

## Getting Started

### Prerequisites

- Node.js 18+
- npm or yarn
- Docker (optional, for containerized deployment)

### Development

1. Install dependencies:

```bash
npm install
```

2. Start the development server:

```bash
npm run dev
```

The application will be available at `http://localhost:4173`

### Production Build

1. Build the application:

```bash
npm run build
```

2. Preview the production build:

```bash
npm run preview
```

## Docker Deployment

### Development with Docker

```bash
docker-compose -f docker-compose.dev.yml up --build
```

### Production with Docker

```bash
docker-compose up --build
```

The application will be available at `http://localhost:3001`

## Project Structure

```
Felix/
├── public/                 # Static assets
│   ├── favicon.svg
│   └── placeholder-profile.jpg
├── src/                    # Source code
│   ├── App.vue            # Main Vue component
│   ├── main.js            # Application entry point
│   └── style.css          # Global styles
├── docker-compose.yml     # Production Docker setup
├── docker-compose.dev.yml # Development Docker setup
├── Dockerfile             # Production Docker image
├── Dockerfile.dev         # Development Docker image
├── nginx.conf             # Nginx configuration
├── package.json           # Dependencies and scripts
├── vite.config.js         # Vite configuration
└── index.html             # HTML template
```

## Integration with grabler.me-hub

This project is designed to be easily integrated into the larger grabler.me-hub system. The Docker configuration allows it to run alongside other services in the hub ecosystem.

## Customization

To personalize the website:

1. Replace placeholder content in `src/App.vue`
2. Add your actual profile photo to `public/`
3. Update contact information and social links
4. Modify the color scheme in `src/style.css`
5. Add real project details and experiences

## Technologies Used

- **Vue.js 3** - Progressive JavaScript framework
- **Vite** - Fast build tool and development server
- **Docker** - Containerization
- **Nginx** - Web server for production
- **CSS3** - Modern styling with Grid and Flexbox

## License

This project is personal and not licensed for public use.
