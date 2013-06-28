---
title: Log As Data Concept
description : Log centralisation
layout: layoutTypeContent
type: Concept
category: Infrastructure
subcategory: Foundation
status: Draft
references:
  - Log As Data Architecture
  - Log As Data Design
authors: Patrick Alin
date: juin 2013  
---

##Description

Tous les logs doivent être centralisés : servers, imprimantes, equipements réseaux, téléphone IP, appliances, ...

2 niveaux doit être prévus :

* Pouvant être supprimé sans valeur juridique : log applicatifs, systèmes, ...
* Ne pouvant être supprimeé avec valeur juridique : ex : consultation de l'application fiche de paye. Souvent des logs de sécurités.

Il faut les concervés dans :

* un espace court terme : 3 semaines
* un espace long terme : 3 ans
* avoir des métric : seulement des compteurs
 
