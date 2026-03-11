# 🐳 Mini laboratoire Docker — API Flask + Redis

Ce projet est un **mini laboratoire Docker pédagogique** conçu pour démontrer les bases de la containerisation dans un contexte simple, clair et proche d'un environnement réel.

Il permet de pratiquer :

- la création d'une image avec un **Dockerfile**
- l'utilisation d'un **multi-stage build**
- l'orchestration de services avec **Docker Compose**
- la communication entre containers
- la persistance des données avec **volumes Docker**
- l'exécution de tests simples de validation

---

## 🎯 Objectif du projet

Ce laboratoire a été créé dans un but **didactique** afin de servir comme support de démonstration technique, d'apprentissage personnel ou de préparation à des entrevues DevOps / Cloud.

L'application expose une petite API Flask qui incrémente un compteur stocké dans Redis.

---

## 🏗 Architecture

Deux services sont utilisés :

- **web** : application Flask servie par Gunicorn
- **redis** : stockage du compteur de visites

Schéma logique :

```text
Navigateur / curl
       │
       ▼
   Flask API
       │
       ▼
     Redis
