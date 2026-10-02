---
layout: legal
lang: fr
locale: fr_FR
ref: privacy
permalink: /fr/privacy/
title: "Politique de confidentialité"
description: >-
  Comment PrizmX traite vos données : ni compte, ni publicité, ni suivi.
  PrizmX Communauté envoie des données d’utilisation anonymes que vous pouvez
  désactiver.
last_updated: 2026-10-02
---

PrizmX est un client proxy pour les plateformes Apple, développé en tant que projet open source. La présente politique explique quelles informations les applications PrizmX et ce site web traitent, et où elles sont transmises.

**En bref :** PrizmX ne comporte ni compte, ni publicité, ni suivi. PrizmX Communauté envoie des données d’utilisation anonymes, comme les lancements et les versions de l’application, afin de nous aider à comprendre comment elle est utilisée. Vous pouvez désactiver cet envoi dans les réglages. Vos profils, réglages et statistiques restent sur votre appareil.

## Champ d’application de la présente politique

La présente politique s’applique à :

- **PrizmX Communauté**, l’application macOS gratuite et open source distribuée via GitHub ;
- **PrizmX pour l’App Store**, l’édition iOS et macOS distribuée via l’App Store ; et
- ce site web.

Ensemble, nous désignons ces deux applications par « les Applications ». « PrizmX » et « nous » désignent le projet PrizmX et ses développeurs.

## Informations que nous collectons

Les Applications ne nécessitent pas de compte et ne contiennent aucun SDK publicitaire. PrizmX pour l’App Store ne nous transmet aucune information personnelle, donnée d’utilisation, rapport de plantage ni identifiant d’appareil, et ne contient aucun SDK tiers d’analyse ou de rapport de plantage.

### Données d’utilisation anonymes dans PrizmX Communauté

PrizmX Communauté utilise [PostHog](https://posthog.com) pour collecter des données d’utilisation anonymes. Elles nous indiquent combien de personnes utilisent l’application, quelles versions de l’application et de macOS sont utilisées, et si une version pose des problèmes. Cette collecte est activée par défaut. Vous pouvez la désactiver à tout moment dans **Settings → Privacy → Share Anonymous Usage Data**. Lorsqu’elle est désactivée, rien n’est envoyé.

Lorsqu’elle est activée, l’application envoie un événement lorsqu’elle est lancée, installée ou mise à jour, une fois par jour tant qu’elle est en cours d’exécution, lorsque TUN ou le proxy système est activé ou désactivé, et lorsqu’elle est ouverte ou placée en arrière-plan. Chaque événement comprend :

- un identifiant aléatoire créé par l’application, qui n’est lié ni à votre nom, ni à votre adresse e-mail, ni à votre identifiant Apple ;
- l’édition, la version, le build et l’identifiant de bundle de l’application ;
- l’état activé ou non de TUN et du proxy système ;
- le modèle de votre Mac, votre version de macOS, la taille de votre écran, votre langue, votre fuseau horaire et le fait que vous soyez connecté en Wi-Fi ou non.

Les événements n’incluent ni vos profils, ni vos abonnements, ni les adresses de serveurs, ni vos identifiants, ni vos règles, ni les domaines ou applications que vous utilisez, ni votre trafic, ni votre historique des connexions. Comme tout serveur, PostHog reçoit votre adresse IP à chaque requête et peut l’utiliser pour estimer une localisation approximative. PostHog stocke les données aux États-Unis conformément à la [Politique de confidentialité de PostHog](https://posthog.com/privacy). Nous les utilisons uniquement pour améliorer PrizmX. Nous ne les vendons pas et ne les utilisons pas à des fins publicitaires.

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
- **Données d’utilisation.** Si les données d’utilisation anonymes sont activées, PrizmX Communauté les envoie à PostHog (`us.i.posthog.com`), comme décrit ci-dessus.
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

Comme les Applications ne nous transmettent aucune donnée personnelle, vous contrôlez directement vos données : vous pouvez les consulter ou les supprimer dans l’Application, ou supprimer l’Application avec ses données. Dans PrizmX Communauté, vous pouvez désactiver à tout moment les données d’utilisation anonymes dans les réglages. Nous ne vendons ni ne partageons d’informations personnelles. Pour tout message que vous nous avez envoyé, vous pouvez, en utilisant l’adresse de contact ci-dessous, demander à y accéder ou à ce qu’il soit supprimé. Selon votre lieu de résidence, vous pouvez également avoir le droit d’introduire une réclamation auprès d’une autorité de protection des données.

## Enfants

Les Applications ne s’adressent pas aux enfants de moins de 13 ans, et nous ne collectons pas sciemment d’informations personnelles auprès d’enfants.

## Modifications de la présente politique

Lorsque les Applications ou la présente politique changeront, nous mettrons à jour cette page ainsi que la date « Dernière mise à jour » indiquée ci-dessus. Les modifications importantes seront également signalées dans les notes de version.

## Contact

Pour toute question concernant la présente politique : {% include legal-contact.html %}
