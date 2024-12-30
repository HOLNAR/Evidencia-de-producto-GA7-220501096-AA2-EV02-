<%-- 
    Document   : panel
    Created on : 29/12/2024, 2:17:35 p. m.
    Author     : H0LNAR.SA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Desarrollo de Software Profesional</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
        }
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://source.unsplash.com/1600x900/?technology,software') no-repeat center center/cover;
            color: white;
            height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
        .services .card {
            transition: transform 0.3s;
        }
        .services .card:hover {
            transform: scale(1.05);
        }
        footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">DevSoftPro</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#about">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#services">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1 class="display-4">Desarrollo de Software a la Medida</h1>
            <p class="lead">Transformamos tus ideas en soluciones digitales innovadoras.</p>
            <a href="#services" class="btn btn-primary btn-lg">Descubre nuestros servicios</a>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6">
                    <h2>Sobre Nosotros</h2>
                    <p>En DevSoftPro, somos un equipo de profesionales dedicados a brindar soluciones de software personalizadas y de alta calidad. Con años de experiencia, ayudamos a empresas y emprendedores a alcanzar sus objetivos tecnológicos.</p>
                </div>
                <div class="col-md-6">
                   
                </div>
            </div>
        </div>
    </section>

    <!-- Services Section -->
    <section id="services" class="services py-5 bg-light">
        <div class="container">
            <div class="text-center mb-4">
                <h2>Nuestros Servicios</h2>
                <p class="text-muted">Ofrecemos una amplia gama de servicios para cubrir todas tus necesidades tecnológicas.</p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-laptop" style="font-size: 2rem;"></i>
                            <h5 class="card-title mt-3">Desarrollo Web</h5>
                            <p class="card-text">Creamos sitios web modernos, responsivos y personalizados para tu negocio.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-phone" style="font-size: 2rem;"></i>
                            <h5 class="card-title mt-3">Aplicaciones Móviles</h5>
                            <p class="card-text">Desarrollamos aplicaciones móviles intuitivas para Android e iOS.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card shadow-sm">
                        <div class="card-body text-center">
                            <i class="bi bi-cloud" style="font-size: 2rem;"></i>
                            <h5 class="card-title mt-3">Soluciones en la Nube</h5>
                            <p class="card-text">Implementamos y gestionamos servicios en la nube para tu empresa.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="py-5">
        <div class="container">
            <div class="text-center mb-4">
                <h2>Contacto</h2>
                <p class="text-muted">¿Tienes un proyecto en mente? ¡Hablemos!</p>
            </div>
            <div class="row">
                <div class="col-md-8 offset-md-2">
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="name" placeholder="Tu nombre">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" placeholder="Tu correo">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Mensaje</label>
                            <textarea class="form-control" id="message" rows="5" placeholder="Tu mensaje"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <div class="container">
            <p class="mb-0">&copy; 2024 DevSoftPro. Todos los derechos reservados.</p>
        </div>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

