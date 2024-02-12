# Examen de fin de cours Kubernetes

## Introduction & informations générales

Cet examen se déroule sur 3h et se compose de 2 étapes:

1. un quiz portant sur l'ensemble des notions abordées ensemble pendant nos séances, c'est-à-dire:
   - les concepts concernant les applications "cloud native" au sens large
   - l'architecture d'un cluster kubernetes et son installation
   - le déploiement et la configuration d'applications sur des plate-formes Kubernetes
2. un ensemble de TP portant exclusivement sur les aspects relatifs au déploiement et à la configuration d'applications dans un écosystème Kubernetes

## Exigences particulières

Vous attacherez un soin particulier à la présentation, à la rédaction et à la justification
de vos choix.  
Vous devrez rendre un compte-rendu détaillé avec des captures d’écran lorsque ce sera nécessaire.  

**Dès la fin de la séance, vous me fournirez sur par e-mail**:

1. l'ensemble des fichiers YAML que vous aurez utilisés
2. le compte-rendu d'exécution des TP

### Supports externes

:fire: :fire: :fire:  

- Durant le quiz, aucun support de cours ni accès à de la documentation n'est autorisé.  
- En revanche, pendant la 2e phase (les travaux pratiques), vous pouvez utiliser toutes les notes que vous avez prises pendant nos séances de travail ainsi qu'accéder à la documentation "statique" que vous trouverez sur Internet.  
Par documentation "statique", j'entends l'exclusion de toutes les solutions de LLM ou Generative AI comme ChatGPT par exemple.

### Barème de notation

Cette épreuve est notée sur 20 points.  

- La documentation, la présentation et la rédaction comptent pour **30%** de la note, soient 6 points
- Le quiz compte pour **20%** de la note finale, soit 4 points  
- Le code source correspond à **50%** de la note, soit 10 points

## quiz (4 points)

Voici l'URL d'accès au quiz: [[cliquer ici]](https://app.wooclap.com/RCAELD)

## Travaux pratiques (10 points)

### Accès à votre namespace

- tous ces TP seront exécutés sur le cluster Kubernetes qui est mis à votre disposition
- chacun d'entre vous a reçu par e-mail un fichier `kubeconfig` vous permettant d'accéder à un namespace au sein de ce cluster
- chacun d'entre vous s'est vu attribué un domaine DNS dédié qui vous permettra de mener à bien les TP qui nécessitent la mise en place d'`ingresses`.  
  :bulb: comme pendant les séances que nous avons réalisées ensemble, ces domaines DNS se nomment `*.<votre_prénom>.calpeabyla.com`

### Instructions pour les travaux pratiques

1. [[instructions du TP #1]](TP-1/README.md): générer du chaos avec `kube invader`
2. [[instructions du TP #2]](TP-2/README.md): application de banque multi micro-services
