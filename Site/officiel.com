<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Le Bar à Kyurushino</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://i.pinimg.com/736x/8c/e5/51/8ce551d5a4674d1c376058494bc5272b.jpg');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: white;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
            text-align: center;
        }
        header h1 {
            font-size: 2.5rem;
            color: #ffccdd;
        }
        .main-content {
            padding: 20px;
            text-align: center;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            margin: 50px auto;
            max-width: 800px;
        }
        footer {
            background-color: #111;
            color: #aaa;
            text-align: center;
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            bottom: 0;
            font-size: 0.8rem;
        }
        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin: 30px auto;
            max-width: 1200px;
        }
        .section {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
        .section a {
            color: #ffccdd;
            font-size: 1.2rem;
            text-decoration: none;
            font-weight: bold;
        }
        .section a:hover {
            color: #ff99aa;
        }
        h2 {
            font-size: 2rem;
            margin-bottom: 15px;
        }
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            margin-bottom: 10px;
        }

        @media (max-width: 768px) {
            .main-content {
                margin: 20px;
            }
        }

        /* Nouvelle section Règlement du Serveur en horizontal (de gauche à droite) */
        .rules-section {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            margin: 50px auto;
            max-width: 1200px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: flex-start;
            gap: 20px;
        }

        .rules-section .rule {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 15px;
            border-radius: 8px;
            width: 30%; /* Chaque règle occupe environ un tiers de la largeur */
            min-width: 280px;
            text-align: center;
            margin-bottom: 20px;
        }

        .rules-section h2 {
            width: 100%;
            text-align: center;
            margin-bottom: 20px;
        }

        .rules-section li {
            font-size: 1rem;
            line-height: 1.6;
        }

        .rules-section li strong {
            color: #ff99aa;
        }

        /* Section Témoignages et Questions fréquemment posées côte à côte */
        .testimonials-faq {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin: 50px auto;
            max-width: 1200px;
        }

        .testimonials, .faq {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .testimonials h2, .faq h2 {
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .testimonials ul, .faq ul {
            list-style-type: none;
            padding: 0;
        }

        .testimonials ul li, .faq ul li {
            margin-bottom: 15px;
            font-size: 1rem;
            line-height: 1.6;
        }

        .testimonials ul li strong, .faq ul li strong {
            color: #ff99aa;
        }

        @media (max-width: 768px) {
            .testimonials-faq {
                grid-template-columns: 1fr; /* Pour les petits écrans, les sections se superposent */
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Bienvenue au Bar à Kyurushino</h1>
        <p>Un serveur communautaire pour les passionnés de jeux vidéo, d'anime et de culture japonaise.</p>
    </header>

    <div class="main-content">
        <h2>Pourquoi rejoindre notre communauté ?</h2>
        <p>Le Bar à Kyurushino offre une expérience unique : des jeux en équipe, des discussions animées, des événements, et bien plus encore.</p>
        <p><strong>Accès à notre Discord :</strong> Rejoignez-nous pour explorer tout ce que nous avons à offrir.</p>
        <a href="https://discord.gg/tonlien" target="_blank" style="color: #ffccdd; font-size: 1.5rem;">Rejoindre le Discord</a>
    </div>

    <div class="container">
        <!-- Section Salons Textuels et Vocaux -->
        <div class="section">
            <h2>Salons Textuels et Vocaux</h2>
            <p>Découvrez la diversité de nos salons :</p>
            <ul>
                <li><strong>Salons Textuels :</strong>
                    <ul>
                        <li>#Comptoir : Un salon général où les membres peuvent discuter de tout et de rien, échanger des idées ou simplement passer du temps ensemble. C'est un lieu de rencontre informel.</li>
                        <li>#Médias : Un salon pour partager des photos, vidéos, actualités ou autres contenus multimédias. Cela pourrait inclure des discussions sur des événements récents ou des contenus intéressants.</li>
                        <li>#Règles : Un salon essentiel où sont listées les règles du serveur. Les membres doivent lire et accepter ces règles avant de participer activement aux autres salons.</li>
                        <li>#Musiques : Un espace où les membres peuvent partager des chansons, discuter de leurs goûts musicaux ou même organiser des sessions d'écoute en groupe.</li>
                        <li>#Gaming : Un salon dédié aux discussions sur les jeux vidéo. Les membres peuvent discuter de jeux récents, organiser des sessions de jeu en ligne ou échanger des astuces.</li>
					    <li>#Nourriture : Un salon pour discuter de cuisine, partager des recettes, des photos de plats ou simplement échanger sur les préférences culinaires.</li>
					    <li>#Art-shares : Un salon où les membres peuvent partager leurs créations artistiques, qu'il s'agisse de dessins, de peintures, de photos ou d'autres formes d'art.</li>
					</ul>
                </li>
                <li><strong>Salons Vocaux :</strong>
                    <ul>
                        <li>Salons Vocaux : Discutez entre vous, jouez ou échangez en vocale</li>
                        <li>Salons Vocaux Privés : Discutez entre vous, jouez ou échangez en vocale privé sous l'autorisation d'un staff.</li>
                        <li>Bip Boup (🎧 Musique) : Profitez de playlists relaxantes tout ensembles.</li>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- Section Rôles et Grades -->
        <div class="section">
            <h2>Rôles et Grades</h2>
            <ul>
                <li><strong>Membres :</strong> Accès aux salons de base.</li>
                <li><strong>VIP :</strong> Réservé aux membres les plus actifs ou aux donateurs.</li>
                <li><strong>Boosters :</strong> Les personnent qui boosts le serveur.</li>
				<li><strong>Helpers :</strong> Aident les Modérateurs dans la gestion de la communauté</li>
				<li><strong>Modérateurs :</strong> Gestion de la communauté et aide aux membres et gèrent les tickets.</li>
                <li><strong>Admins :</strong> Supervision générale et organisation des événements.</li>
                <li><strong>Gérant du bar :</strong> Aide travail avec le fondateur pour améliorer le serveur (salons, esthétique du serveur par exemple).</li>
			    <li><strong>Fondateur/s :</strong> Créateur du serveur et dirigeant des directives administrateurs.</li>
			</ul>
        </div>

        <!-- Section Bots et Fonctionnalités -->
        <div class="section">
            <h2>Bots et Fonctionnalités</h2>
            <ul>
                <li><strong>Ayana :</strong> Profitez de votre musique préférée directement dans les salons vocaux.</li>
                <li><strong>Mee6 :</strong> Gestion des niveaux et des notifications pour les événements.</li>
                <li><strong>Disboard :</strong> Le bot Disboard sert à promouvoir un serveur Discord sur le site Disboard.org.</li>
                <li><strong>Draftbot :</strong> Le bot DraftBot permet de jouer à des jeux de rôle, des quiz, et des jeux de société sur Discord.</li>
                <li><strong>Member Count :</strong> Member count est le nombre total de membres sur un serveur Discord. Il peut être vu directement dans le serveur ou grâce à un bot qui affiche cette information.</li>
				<li><strong>Koya :</strong> Koya est un bot Discord qui aide à modérer les serveurs, offre des commandes utiles pour les jeux et les infos, et permet de personnaliser les rôles et messages automatiques. Il simplifie la gestion des serveurs tout en ajoutant des fonctionnalités ludiques.</li>
                <li><strong>RaidProtect :</strong> RaidProtect est un bot Discord qui protège les serveurs contre les raids en bloquant les comportements suspects et en limitant les actions des nouveaux membres pour éviter les attaques.</li>
			</ul>
        </div>
    </div>

    <!-- Section Témoignages et FAQ -->
    <div class="testimonials-faq">
        <!-- Section Témoignages -->
        <div class="testimonials">
            <h2>Témoignages</h2>
            <ul>
                <li><strong>Horki :</strong> "Le Bar à Kyurushino est l'endroit idéal pour discuter de mes passions. L'ambiance y est incroyable et les gens sont toujours accueillants!"</li>
                <li><strong>Seikatsu :</strong> "Un serveur très vivant! On y trouve toujours quelqu'un pour jouer ou discuter. J'ai fait de superbes rencontres!"</li>
                <li><strong>Tenshi :</strong> "Si vous aimez les jeux vidéo et l'univers japonais, c'est le serveur parfait. De nombreux événements et une vraie communauté!"</li>
            </ul>
        </div>

        <!-- Section Questions fréquemment posées -->
        <div class="faq">
            <h2>Questions fréquemment posées</h2>
            <ul>
                <li><strong>Comment rejoindre le serveur ?</strong> Cliquez simplement sur le lien Discord et rejoignez-nous !</li>
                <li><strong>Est-ce que le serveur est gratuit ?</strong> Oui, l'accès au serveur est totalement gratuit !</li>
                <li><strong>Y a-t-il des événements réguliers ?</strong> Oui, nous organisons régulièrement des événements, des compétitions et des soirées jeux. Restez à l'affût sur notre Discord !</li>
                <li><strong>Je suis nouveau, puis-je poser des questions ?</strong> Bien sûr ! Les membres et les modérateurs seront toujours prêts à vous aider.</li>
                <li><strong>Comment devenir VIP ?</strong> Vous pouvez devenir VIP en étant actif ou en faisant un don pour soutenir le serveur. Renseignez-vous sur Discord pour plus de détails.</li>
            </ul>
        </div>
    </div>

    <!-- Section Règlement du Serveur -->
    <div class="rules-section">
        <h2>Règlement du Serveur</h2>
        <strong>Pour vivre en harmonie au sein de ce serveur, veuillez respecter les règles suivantes. Ces règles peuvent être modifiées si nécessaire.</strong>
        <ul>
            <li>1. Respectez les autres membres et évitez tout contenu haineux, même sous forme d'humour. Les contenus violents, les insultes raciales, les menaces (même de la part des modérateurs) sont strictement interdits.</li>
            <li>2. Pas d'arnaques, de liens frauduleux ou volés. Les seuls liens autorisés sont les liens vers des vidéos YouTube ou des serveurs partenaires, à partager uniquement dans les salons appropriés.</li>
            <li>3. Aucun contenu pornographique, nu ou à caractère sexuel. Cela va de soi.</li>
            <li>4. Évitez de poster des messages hors-sujet dans les salons inappropriés. Respectez les sujets des différents salons pour maintenir un environnement agréable.</li>
            <li>5. Il est interdit de spammer le même message plus de trois fois. Par exemple, répéter plusieurs fois le même message ou la même phrase.</li>
            <li>6. Le serveur est laïque, ce qui signifie qu'il n'y aura pas de débats religieux ou politiques. Tout débat de ce type doit se tenir en messages privés.</li>
            <li>7. Évitez les conflits et les discussions dramatiques. Si vous avez un différend avec un autre membre, veuillez le régler en privé. L'objectif est de maintenir une ambiance détendue ici.</li>
            <li>8. Utilisez un langage approprié en évitant les insultes. Soyez respectueux envers les autres membres et exprimez-vous de manière civilisée.</li>
            <li>9. Si vous observez un abus de pouvoir de la part des modérateurs, veuillez le signaler et fournir des preuves à l'appui pour étayer vos plaintes (ou si il y a besoin de faire une plainte, veuillez avoir des preuves à l’appui. C’est important.)</li>
        </ul>       
        <strong>Important :</strong>
        <li>N'usurpez pas l'identité d'autres membres. Ce comportement est également passible de sanctions.</li>
        <li>Des avertissements ou des bannissements peuvent être appliqués en fonction des règles enfreintes. Vous êtes prévenus.</li>
        <li>Ces règles ont pour but de garantir un environnement sain et convivial. Merci de les respecter pour maintenir une bonne ambiance au sein du serveur.</li>
    </div>

    <footer>
        <p>&copy; 2024 Le Bar à Kyurushino. Tous droits réservés.</p>
    </footer>

</body>
</html>
