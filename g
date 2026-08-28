<!DOCTYPE html>
<html lang="pt">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Coimbra RP | Update 2.0</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    min-height:100vh;
    font-family:Arial,Helvetica,sans-serif;
    background:#050505;
    color:white;
    overflow-x:hidden;
}

/* FUNDO */
body::before{
    content:"";
    position:fixed;
    inset:0;
    z-index:-2;

    background:
        radial-gradient(
            circle at 50% 10%,
            rgba(255,0,0,.35),
            transparent 35%
        ),
        radial-gradient(
            circle at 10% 90%,
            rgba(150,0,0,.20),
            transparent 30%
        ),
        radial-gradient(
            circle at 90% 70%,
            rgba(150,0,0,.20),
            transparent 30%
        );
}

/* RAIOS VERMELHOS */
.raio{
    position:fixed;
    width:2px;
    height:220px;

    background:linear-gradient(
        transparent,
        red,
        transparent
    );

    opacity:.4;
    animation:cair 5s linear infinite;

    z-index:-1;
}

.raio1{
    left:10%;
    top:-250px;
    transform:rotate(25deg);
}

.raio2{
    right:10%;
    top:-300px;
    transform:rotate(-25deg);
    animation-delay:2s;
}

@keyframes cair{
    from{
        top:-300px;
    }

    to{
        top:120%;
    }
}

/* INÍCIO */
.inicio{
    min-height:100vh;

    display:flex;
    flex-direction:column;

    align-items:center;
    justify-content:center;

    text-align:center;

    padding:30px 20px;
}

/* LOGO */
.logo{
    width:min(85vw,500px);
    max-height:500px;

    object-fit:contain;

    margin-bottom:25px;

    filter:
        drop-shadow(0 0 12px red)
        drop-shadow(0 0 35px rgba(255,0,0,.6));

    animation:brilho 3s ease-in-out infinite;
}

@keyframes brilho{
    0%,100%{
        transform:scale(1);
    }

    50%{
        transform:scale(1.04);
    }
}

/* TÍTULO */
h1{
    font-size:clamp(38px,10vw,75px);

    font-weight:900;

    letter-spacing:6px;

    text-shadow:
        0 0 12px red,
        0 0 30px rgba(255,0,0,.7);
}

/* UPDATE */
.update{
    margin-top:10px;

    color:#ff2020;

    font-size:20px;

    font-weight:bold;

    letter-spacing:6px;
}

/* DESCRIÇÃO */
.descricao{
    max-width:600px;

    margin-top:18px;

    color:#bbb;

    line-height:1.6;
}

/* BOTÕES */
.botoes{
    display:flex;

    flex-wrap:wrap;

    justify-content:center;

    gap:15px;

    margin-top:35px;

    max-width:900px;
}

/* BOTÃO */
.botao{
    display:inline-block;

    min-width:210px;

    padding:16px 25px;

    border:1px solid #ff2020;

    border-radius:12px;

    background:
        linear-gradient(
            135deg,
            #c40000,
            #4b0000
        );

    color:white;

    text-decoration:none;

    font-weight:900;

    letter-spacing:1px;

    box-shadow:
        0 0 18px rgba(255,0,0,.25);

    transition:.3s;
}

.botao:hover{
    transform:translateY(-5px);

    background:
        linear-gradient(
            135deg,
            #ef0000,
            #700000
        );

    box-shadow:
        0 0 30px rgba(255,0,0,.6);
}

/* TELEMÓVEL */
@media(max-width:600px){

    .logo{
        width:82vw;
        max-height:380px;
    }

    h1{
        letter-spacing:3px;
    }

    .update{
        font-size:16px;
        letter-spacing:4px;
    }

    .botoes{
        width:100%;
    }

    .botao{
        width:100%;
        max-width:330px;
    }
}
</style>
</head>

<body>

<!-- RAIOS -->
<div class="raio raio1"></div>
<div class="raio raio2"></div>

<main class="inicio">

    <!-- LOGO -->
    <img
        src="logo.png"
        alt="Logo Coimbra RP"
        class="logo"
    >

    <!-- TÍTULO -->
    <h1>
        COIMBRA RP
    </h1>

    <div class="update">
        UPDATE 2.0
    </div>

    <!-- DESCRIÇÃO -->
    <p class="descricao">
        Bem-vindo ao portal oficial do Coimbra RP.
        Junta-te à nossa comunidade e vive o teu próprio Roleplay.
    </p>

    <!-- BOTÕES -->
    <div class="botoes">

        <!-- DISCORD -->
        <a
            href="https://discord.gg/wPGGZUBPS"
            target="_blank"
            rel="noopener noreferrer"
            class="botao"
        >
            💬 ENTRAR NO DISCORD
        </a>

        <!-- REGULAMENTO -->
        <a
            href="regulamento.html"
            class="botao"
        >
            📜 REGULAMENTO
        </a>

        <!-- PROFISSÕES -->
        <a
            href="profissoes.html"
            class="botao"
        >
            💼 PROFISSÕES
        </a>

    </div>

</main>

</body>
</html>
<head>
    <link rel="manifest" href="manifest.json">
<meta name="theme-color" content="#ff0000">
<head>
    </body>
    <script>
if ("serviceWorker" in navigator) {
    window.addEventListener("load", () => {
        navigator.serviceWorker.register("service-worker.js")
            .then(() => console.log("Coimbra RP PWA ativa!"))
            .catch(error => console.log("Erro PWA:", error));
    });
}
</script>
</body>