---
layout: legal
lang: fr
locale: fr_FR
ref: privacy
permalink: /fr/privacy/
title: "Politique de confidentialité"
description: >-
  Comment PrizmX traite vos données : ni compte, ni outil d’analyse, ni suivi.
  Les profils et les statistiques restent sur votre appareil.
last_updated: 2026-10-01
---

PrizmX est un client proxy pour les plateformes Apple, développé en tant que projet open source. La présente politique explique quelles informations les applications PrizmX et ce site web traitent, et où elles sont transmises.

**En bref :** PrizmX ne comporte ni compte, ni outil d’analyse, ni publicité, ni suivi. Nous n’exploitons aucun serveur recevant vos données depuis les applications. Vos profils, réglages et statistiques restent sur votre appareil.

## Champ d’application de la présente politique

La présente politique s’applique à :

- **PrizmX Communauté**, l’application macOS gratuite et open source distribuée via GitHub ;
- **PrizmX pour l’App Store**, l’édition iOS et macOS distribuée via l’App Store ; et
- ce site web.

Ensemble, nous désignons ces deux applications par « les Applications ». « PrizmX » et « nous » désignent le projet PrizmX et ses développeurs.

## Informations que nous collectons

Les Applications ne nous transmettent aucune information personnelle, donnée d’utilisation, rapport de plantage ni identifiant d’appareil. Elles ne contiennent aucun SDK tiers d’analyse, de publicité ou de rapport de plantage, et ne nécessitent pas de compte.

Vous pouvez le vérifier vous-même : le code source de PrizmX Communauté et de ses bibliothèques principales est public sur [GitHub](https://github.com/PrizmX).

## Informations stockées sur votre appareil

Pour fonctionner, les Applications conservent localement les données suivantes, dans leur propre espace de stockage sur votre appareil :

- **Profils et abonnements** que vous importez, y compris les adresses de serveurs, les identifiants, les URL d’abonnement, les règles et les groupes de politiques ;
- **Réglages**, tels que le mode de sortie et les options proxy système, TUN et Allow LAN ;
- **Statistiques de trafic** : totaux quotidiens sur environ 35 jours et totaux mensuels sur 24 mois, y compris les domaines et les applications ayant consommé le plus de trafic ;
- **Historique des connexions** affiché dans Inspector : une liste limitée des connexions récentes, avec l’application, l’hôte, la politique correspondante, le protocole, la durée et le nombre d’octets.

Ces données ne quittent jamais votre appareil, sauf si vous les partagez ou les sauvegardez vous-même. Vous pouvez les supprimer en retirant les profils dans l’Application, ou en supprimant l’Application ainsi que ses données.

Sous macOS, PrizmX Communauté lit les informations locales relatives aux processus afin d’indiquer quelle application a ouvert chaque connexion. Cette opération s’effectue uniquement sur votre Mac.

## Connexions réseau établies par les Applications

En dehors du routage de votre trafic, les Applications contactent les services suivants. Aucun d’entre eux n’est exploité par nous, et chacun reçoit les informations standard d’une requête, telles que votre adresse IP, conformément à sa propre politique de confidentialité.

- **Vos serveurs proxy.** Le trafic est envoyé aux serveurs figurant dans vos profils, exploités par vous-même ou par les fournisseurs de votre choix. Ces opérateurs peuvent voir vos connexions selon le fonctionnement de leur service. PrizmX ne fournit ni serveurs proxy ni abonnements.
- **Mises à jour des abonnements.** Les profils sont téléchargés depuis les URL d’abonnement que vous ajoutez.
- **Tests de latence.** Pour mesurer la latence des nœuds, les Applications envoient de petites requêtes HTTP via chaque nœud vers une URL de test (par défaut `http://www.gstatic.com/generate_204`, ou l’URL définie dans votre profil). Pour mesurer la latence du trajet, elles ouvrent des connexions TCP vers `1.1.1.1` (Cloudflare) et `223.5.5.5` (Alibaba Cloud DNS) et résolvent `www.apple.com` à l’aide du résolveur DNS de votre système.
- **Recherche de l’adresse IP externe.** PrizmX Communauté affiche votre adresse IP publique actuelle ainsi que sa localisation et son réseau approximatifs. Pour ce faire, il interroge `api.ipify.org` et `ipwho.is` lorsque vous vous connectez, changez de nœud ou ouvrez la vue Home.
- **Bases de données de règles.** Si votre profil utilise des règles `GEOIP` ou `GEOSITE`, les Applications téléchargent les bases de données `geoip.metadb` et `geosite.dat` depuis GitHub (MetaCubeX/meta-rules-dat), ou depuis jsDelivr en solution de repli, et les actualisent environ une fois par semaine.

## Autorisations

Les Applications demandent l’autorisation d’ajouter une configuration VPN (Packet Tunnel). Celle-ci sert uniquement à router le trafic de votre appareil selon vos règles, sur votre appareil. Sous macOS, PrizmX Communauté peut également modifier les réglages proxy du système lorsque le proxy système est activé.

Si vous activez **Allow LAN**, d’autres appareils de votre réseau local peuvent utiliser votre port proxy. Ne l’activez que sur des réseaux auxquels vous faites confiance.

## Déchiffrement HTTPS

PrizmX Communauté ne déchiffre ni ne modifie votre trafic. Si PrizmX pour l’App Store propose la capture, le déchiffrement ou la réécriture HTTP, ces fonctionnalités seront désactivées par défaut, nécessiteront que vous installiez vous-même un certificat et lui accordiez votre confiance, et ne traiteront le contenu déchiffré que sur votre appareil.

## Achats et Apple

Les achats effectués dans PrizmX pour l’App Store sont traités par Apple. Nous ne recevons ni vos informations de paiement, ni votre nom, ni votre identifiant Apple. Apple nous fournit des rapports de ventes qui ne permettent pas de vous identifier.

Si vous avez choisi, dans les réglages de votre appareil, de partager des données d’analyse avec les développeurs d’apps, Apple peut nous fournir des rapports de plantage et des statistiques d’utilisation agrégées concernant PrizmX pour l’App Store. Nous les utilisons uniquement pour corriger des problèmes. Le traitement de ces données par Apple est décrit dans l’[Engagement de confidentialité d’Apple](https://www.apple.com/legal/privacy/).

## Ce site web

Ce site web est hébergé sur GitHub Pages. Il n’utilise aucun cookie, outil d’analyse ni dispositif de suivi, et ne charge aucun script ni aucune police tiers. GitHub peut enregistrer les adresses IP des visiteurs à des fins de sécurité et d’exploitation, comme décrit dans la [Déclaration de confidentialité de GitHub](https://docs.github.com/site-policy/privacy-policies/github-general-privacy-statement). Les téléchargements de PrizmX Communauté sont servis par GitHub Releases conformément à cette même déclaration.

## Lorsque vous nous contactez

Si vous nous écrivez par e-mail, nous recevons votre adresse e-mail et votre message. Nous les utilisons uniquement pour vous répondre, ne les conservons que le temps nécessaire à cette fin et ne les partageons pas.

## Vos choix et vos droits

Comme nous ne détenons aucune donnée personnelle issue des Applications, vous contrôlez directement vos données : vous pouvez les consulter ou les supprimer dans l’Application, ou supprimer l’Application avec ses données. Nous ne vendons ni ne partageons d’informations personnelles. Pour tout message que vous nous avez envoyé, vous pouvez, en utilisant l’adresse de contact ci-dessous, demander à y accéder ou à ce qu’il soit supprimé. Selon votre lieu de résidence, vous pouvez également avoir le droit d’introduire une réclamation auprès d’une autorité de protection des données.

## Enfants

Les Applications ne s’adressent pas aux enfants de moins de 13 ans, et nous ne collectons pas sciemment d’informations personnelles auprès d’enfants.

## Modifications de la présente politique

Lorsque les Applications ou la présente politique changeront, nous mettrons à jour cette page ainsi que la date « Dernière mise à jour » indiquée ci-dessus. Les modifications importantes seront également signalées dans les notes de version.

## Contact

Pour toute question concernant la présente politique : {% include legal-contact.html %}
