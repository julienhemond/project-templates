# project-templates
## Automatisation du projet

Ce projet utilise un script et un fichier de configuration pour automatiser la gestion des Issues et des Labels.

Le fichier `create-issues.ps1` permet de créer automatiquement les Issues du projet avec les bons Labels et les bons Milestones (jusqu'à la semaine 3).  
Le fichier `labels.json` contient la configuration des Labels utilisés dans le projet.

### Prérequis

1. Installer GitHub CLI : https://cli.github.com
2. Vérifier que GitHub CLI est bien connecté avec la commande : `gh auth status`
3. Créer les Labels à l’aide du fichier `labels.json`. Par exemple avec l’outil github-label-sync :

`github-label-sync --access-token VOTRE_TOKEN_GITHUB --labels labels.json votre-utilisateur/nom-du-repo`

### Utilisation du script de création des Issues

1. Créer les issues souhaitées dans le fichier create-issues.ps1 que vous copiez dans votre repo
   - --title : le nom de l'issue
   - --labels : les labels existant dans le repo liés à cette issue
   - --milestones : les milestones existantes dans le repo liées à cette issue
   - --body : la description de l'issue
1. Ouvrir PowerShell.
1. Autoriser temporairement l'exécution des scripts PowerShell :

    ```powershell
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    ```

1. Se placer dans le dossier du projet :

    ```powershell
    cd [path-vers-le-projet]
    ```

1. Lancer le script :

    ```powershell
    .\create-issues.ps1
    ```

### Fonctionnement attendu

1. Les Issues des semaines 1 à 3 sont créées avec leur Milestone.
2. Les Issues à partir de la semaine 4 sont créées sans Milestone.
3. Chaque Issue est taguée avec les Labels définis dans `labels.json`.
4. Les Issues apparaissent dans le GitHub Project Board après liaison.

### Bonnes pratiques

1. Vérifier que les Labels et Milestones sont en place avant de lancer le script.
2. Relancer le script en cas de besoin (attention aux doublons éventuels).
3. Organiser ensuite les Issues dans le Project Board : Backlog, À faire, En cours, Fait.
4. Maintenir à jour le fichier `labels.json` en fonction de l’évolution du projet.

### labels.json

1. Installer Node.js (si ce n’est pas déjà fait) → [https://nodejs.org](https://nodejs.org)  
   → Cela fournit `node` et `npm`.

1. Installer `github-label-sync` en global :

    ```powershell
    npm install -g github-label-sync
    ```
1. Générer un token sur GitHub
    - Aller sur https://github.com/settings/tokens
    - Cliquer sur : "Fine-grained tokens" → c’est le plus sécurisé.
→ Puis : "Generate new token"
    - Nom du token → ex: github-label-sync
    - Expiration → mettre la durée du projet (toujours possible de recréer token en cas de problème)
    - Permissions → cocher :

        - Repository permissions → Metadata → Read-only
        - Repository permissions → Issues → Read and write
        - Repository permissions → Administration → Read and write
    - Cliquer sur Generate token.
    - Copier le token (il ne sera plus jamais visible après) → Il ressemble à : ghp_XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
1. Utiliser `github-label-sync` :

    ```powershell
    github-label-sync --access-token TON_TOKEN_GITHUB --labels labels.json nom-du-repo-github
    ```

    → Cela synchronise les labels.