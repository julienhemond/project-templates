# ⚙️ Script: create-issues.ps1
# 🚀 Crée automatiquement toutes les Issues du projet board-game-creator

# 🚦 Vérifier que gh CLI est bien connecté :
# gh auth status

# -----------------------------
# 🚀 Semaine 1 — Cadrage et préparation
# -----------------------------

gh issue create --title "Rédiger le cahier des charges du MVP" --label "documentation,mvp" --milestone "Semaine 1" --body "Décrire les fonctionnalités prioritaires, le public cible, les besoins principaux."

gh issue create --title "Définir les fonctionnalités prioritaires" --label "documentation,mvp" --milestone "Semaine 1" --body "Lister les fonctionnalités de base pour le MVP."

gh issue create --title "Faire les maquettes (Figma)" --label "frontend,documentation,mvp" --milestone "Semaine 1" --body "Réaliser des maquettes de l'interface."

gh issue create --title "Choisir la stack technique" --label "documentation,infra,mvp" --milestone "Semaine 1" --body "Valider les technologies utilisées (React, Express, MongoDB, etc.)."

gh issue create --title "Créer le repo GitHub" --label "infra,mvp" --milestone "Semaine 1" --body "Initialiser le repo avec un README et un .gitignore adapté."

gh issue create --title "Créer le GitHub Project" --label "infra,mvp" --milestone "Semaine 1" --body "Mettre en place le Board de suivi."

gh issue create --title "Installer les outils de base" --label "infra,backend,frontend,mvp" --milestone "Semaine 1" --body "Configurer Vite, React, Express, connexion MongoDB Cloud."

# -----------------------------
# 🚀 Semaine 2 — Authentification + structure de base
# -----------------------------

gh issue create --title "Implémenter l'authentification" --label "backend,frontend,auth,mvp" --milestone "Semaine 2" --body "Mettre en place l'authentification (Google ou email/password)."

gh issue create --title "Créer la structure des pages" --label "frontend,mvp" --milestone "Semaine 2" --body "Configurer le layout, les routes principales."

gh issue create --title "Créer le schéma DB (utilisateur, jeu)" --label "backend,database,mvp" --milestone "Semaine 2" --body "Concevoir et implémenter les schémas MongoDB."

# -----------------------------
# 🚀 Semaine 3 — Création de jeux
# -----------------------------

gh issue create --title "Implémenter la création d'un jeu" --label "frontend,backend,database,mvp" --milestone "Semaine 3" --body "Formulaire de création de jeu (titre, description)."

gh issue create --title "Sauvegarder un jeu en base de données" --label "backend,database,mvp" --milestone "Semaine 3" --body "Connexion à la DB, persistance."

gh issue create --title "Afficher la liste des jeux créés" --label "frontend,backend,database,mvp" --milestone "Semaine 3" --body "Page qui liste les jeux de l'utilisateur connecté."

# -----------------------------
# 🚀 Semaine 4-5 — Éditeur de cartes (sans Milestone)
# -----------------------------

gh issue create --title "Implémenter l'ajout de cartes" --label "frontend,backend,database,mvp" --body "Formulaire pour ajouter une carte (recto/verso, texte, image)."

gh issue create --title "Sauvegarder les cartes en base de données" --label "backend,database,mvp" --body "Assurer la persistance des cartes liées à un jeu."

gh issue create --title "Améliorer l'éditeur de cartes" --label "frontend,enhancement,mvp" --body "Ajouter le drag & drop si possible."

gh issue create --title "Afficher les cartes d'un jeu" --label "frontend,mvp" --body "Interface pour visualiser les cartes du jeu."

# -----------------------------
# 🚀 Semaine 6 — Export PDF + partage (sans Milestone)
# -----------------------------

gh issue create --title "Générer un PDF des cartes" --label "pdf,backend,frontend,mvp" --body "Créer un PDF imprimable."

gh issue create --title "Créer un lien partageable" --label "backend,frontend,mvp" --body "Permettre le partage public/privé des jeux."

gh issue create --title "Vérifier la qualité du PDF" --label "pdf,testing,mvp" --body "Tester l'export (mise en page, impression)."

# -----------------------------
# 🚀 Semaine 7 — Tests + UX (sans Milestone)
# -----------------------------

gh issue create --title "Réaliser des tests manuels complets" --label "testing,mvp" --body "Tester toutes les fonctionnalités."

gh issue create --title "Améliorer le design et la responsivité" --label "frontend,enhancement,mvp" --body "Optimiser l'interface pour mobile et desktop."

gh issue create --title "Corriger les bugs identifiés" --label "bug,testing,mvp" --body "Résolution des bugs remontés."

# -----------------------------
# 🚀 Semaine 8 — Finalisation + déploiement (sans Milestone)
# -----------------------------

gh issue create --title "Déployer le frontend sur Vercel" --label "deployment,frontend,mvp" --body "Mettre en production l'interface."

gh issue create --title "Déployer le backend + DB" --label "deployment,backend,database,mvp" --body "Mettre en production l'API et la base de données."

gh issue create --title "Rédiger une page \"À propos\"" --label "documentation,mvp" --body "Présenter le projet, le concept."

gh issue create --title "Présenter le projet à la famille et collecter des feedbacks" --label "feedback,testing,mvp" --body "Organiser une session test."

gh issue create --title "Ajuster le projet suite aux feedbacks" --label "feedback,enhancement,mvp" --body "Apporter des améliorations post-test."
