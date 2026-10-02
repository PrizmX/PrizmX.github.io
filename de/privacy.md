---
layout: legal
lang: de
locale: de_DE
ref: privacy
permalink: /de/privacy/
title: Datenschutzerklärung
description: >-
  Wie PrizmX mit Ihren Daten umgeht: keine Benutzerkonten, keine Werbung und
  kein Tracking. PrizmX Community sendet anonyme Nutzungsdaten, die Sie
  ausschalten können.
last_updated: 2026-10-02
---

PrizmX ist ein Proxy-Client für Apple-Plattformen, der als Open-Source-Projekt entwickelt wird. Diese Datenschutzerklärung erläutert, welche Informationen die PrizmX-Apps und diese Website verarbeiten und wohin diese gelangen.

**Kurz gesagt:** PrizmX verwendet keine Benutzerkonten, keine Werbung und kein Tracking. PrizmX Community sendet anonyme Nutzungsdaten wie App-Starts und Versionen, damit wir sehen können, wie die App genutzt wird. Sie können dies in den Einstellungen ausschalten. Ihre Profile, Einstellungen und Statistiken bleiben auf Ihrem Gerät.

## Geltungsbereich dieser Datenschutzerklärung

Diese Datenschutzerklärung gilt für:

- **PrizmX Community**, die kostenlose Open-Source-App für macOS, die über GitHub vertrieben wird;
- **PrizmX für den App Store**, die Edition für iOS und macOS, die über den App Store vertrieben wird; und
- diese Website.

Die beiden Apps werden zusammen als „die Apps“ bezeichnet. „PrizmX“, „wir“ und „uns“ bezeichnen das PrizmX-Projekt und seine Entwickler.

## Informationen, die wir erheben

Die Apps setzen kein Benutzerkonto voraus und enthalten keine Werbe-SDKs. PrizmX für den App Store übermittelt uns keine personenbezogenen Daten, Nutzungsdaten, Absturzberichte oder Gerätekennungen und enthält keine SDKs von Drittanbietern für Analysen oder Absturzberichte.

### Anonyme Nutzungsdaten in PrizmX Community

PrizmX Community verwendet [PostHog](https://posthog.com), um anonyme Nutzungsdaten zu erheben. Daran sehen wir, wie viele Personen die App nutzen, welche App- und macOS-Versionen im Einsatz sind und ob eine Version Probleme verursacht. Diese Funktion ist standardmäßig eingeschaltet. Sie können sie jederzeit unter **Settings → Privacy → Share Anonymous Usage Data** ausschalten. Solange sie ausgeschaltet ist, wird nichts gesendet.

Wenn sie eingeschaltet ist, sendet die App ein Ereignis, wenn sie gestartet, installiert oder aktualisiert wird, einmal täglich, solange sie läuft, wenn TUN oder Systemproxy ein- oder ausgeschaltet wird, sowie wenn sie geöffnet oder in den Hintergrund verschoben wird. Jedes Ereignis enthält:

- eine von der App erzeugte Zufallskennung, die nicht mit Ihrem Namen, Ihrer E-Mail-Adresse oder Ihrer Apple ID verknüpft ist;
- Edition, Version, Build und Bundle-Kennung der App;
- ob TUN und Systemproxy eingeschaltet sind;
- Ihr Mac-Modell, Ihre macOS-Version, Bildschirmgröße, Sprache und Zeitzone sowie die Angabe, ob Sie über WLAN verbunden sind.

Ereignisse enthalten weder Ihre Profile, Abos, Serveradressen, Zugangsdaten oder Regeln noch die Domains oder Apps, die Sie nutzen, Ihren Traffic oder Ihren Verbindungsverlauf. Wie jeder Server erhält PostHog mit jeder Anfrage Ihre IP-Adresse und kann daraus einen ungefähren Standort ableiten. PostHog speichert die Daten in den Vereinigten Staaten gemäß der [Datenschutzerklärung von PostHog](https://posthog.com/privacy). Wir verwenden sie ausschließlich zur Verbesserung von PrizmX. Wir verkaufen sie nicht und verwenden sie nicht für Werbung.

Sie können dies selbst überprüfen: Der Quellcode von PrizmX Community und ihrer Kernbibliotheken ist öffentlich auf [GitHub](https://github.com/PrizmX) verfügbar.

## Auf Ihrem Gerät gespeicherte Informationen

Für ihren Betrieb speichern die Apps die folgenden Daten lokal in ihrem eigenen Speicher auf Ihrem Gerät:

- **Profile und Abos**, die Sie importieren, einschließlich Serveradressen, Zugangsdaten, Abo-URLs, Regeln und Richtliniengruppen;
- **Einstellungen** wie den Outbound-Modus und die Optionen Systemproxy, TUN und Allow LAN;
- **Traffic-Statistiken**: Tagessummen für etwa 35 Tage und Monatssummen für 24 Monate, einschließlich der Domains und Apps, die den meisten Traffic verursacht haben;
- **Verbindungsverlauf**, der im Inspector angezeigt wird: eine begrenzte Liste der letzten Verbindungen mit App, Host, zutreffender Richtlinie, Protokoll, Dauer und Byte-Anzahl.

Diese Daten verlassen Ihr Gerät nie, es sei denn, Sie teilen oder sichern sie selbst. Sie können sie löschen, indem Sie Profile in der App entfernen oder die App zusammen mit ihren Daten löschen.

Unter macOS liest PrizmX Community lokale Prozessinformationen aus, um anzuzeigen, welche App die jeweilige Verbindung aufgebaut hat. Dies geschieht ausschließlich auf Ihrem Mac.

## Von den Apps hergestellte Netzwerkverbindungen

Abgesehen von der Weiterleitung Ihres Traffics kontaktieren die Apps die folgenden Dienste. Keiner davon wird von uns betrieben, und jeder dieser Dienste erhält übliche Anfrageinformationen wie Ihre IP-Adresse gemäß seiner eigenen Datenschutzerklärung.

- **Ihre Proxy-Server.** Der Traffic wird an die Server in Ihren Profilen gesendet, die von Ihnen selbst oder von Anbietern Ihrer Wahl betrieben werden. Diese Betreiber können Ihre Verbindungen entsprechend der Funktionsweise ihres Dienstes einsehen. PrizmX stellt keine Proxy-Server oder Abos bereit.
- **Abo-Aktualisierungen.** Profile werden von den Abo-URLs heruntergeladen, die Sie hinzufügen.
- **Latenztests.** Um die Latenz der Knoten zu messen, senden die Apps über jeden Knoten kleine HTTP-Anfragen an eine Test-URL (standardmäßig `http://www.gstatic.com/generate_204` oder die in Ihrem Profil festgelegte URL). Um die Pfadlatenz zu messen, öffnen sie TCP-Verbindungen zu `1.1.1.1` (Cloudflare) und `223.5.5.5` (Alibaba Cloud DNS) und lösen `www.apple.com` über den DNS-Resolver Ihres Systems auf.
- **Abfrage der externen IP-Adresse.** PrizmX Community zeigt Ihre aktuelle öffentliche IP-Adresse sowie deren ungefähren Standort und deren Netzwerk an. Dazu sendet die App Anfragen an `api.ipify.org` und `ipwho.is`, wenn Sie eine Verbindung herstellen, den Knoten wechseln oder die Home-Ansicht öffnen.
- **Nutzungsdaten.** Wenn anonyme Nutzungsdaten eingeschaltet sind, sendet PrizmX Community sie wie oben beschrieben an PostHog (`us.i.posthog.com`).
- **Regeldatenbanken.** Wenn Ihr Profil `GEOIP`- oder `GEOSITE`-Regeln verwendet, laden die Apps die Datenbanken `geoip.metadb` und `geosite.dat` von GitHub (MetaCubeX/meta-rules-dat) oder ersatzweise von jsDelivr herunter und aktualisieren sie etwa einmal pro Woche.

## Berechtigungen

Die Apps bitten um die Berechtigung, eine VPN-Konfiguration (Packet Tunnel) hinzuzufügen. Diese wird ausschließlich dazu verwendet, den Traffic Ihres Geräts gemäß Ihren Regeln auf Ihrem Gerät weiterzuleiten. Unter macOS kann PrizmX Community außerdem die Proxy-Einstellungen des Systems ändern, solange der Systemproxy eingeschaltet ist.

Wenn Sie **Allow LAN** einschalten, können andere Geräte in Ihrem lokalen Netzwerk Ihren Proxy-Port nutzen. Schalten Sie diese Option nur in Netzwerken ein, denen Sie vertrauen.

## HTTPS-Entschlüsselung

PrizmX Community entschlüsselt oder verändert Ihren Traffic nicht. Falls PrizmX für den App Store HTTP-Mitschnitt, Entschlüsselung oder Umschreiben anbietet, werden diese Funktionen standardmäßig ausgeschaltet sein, voraussetzen, dass Sie selbst ein Zertifikat installieren und ihm vertrauen, und entschlüsselte Inhalte ausschließlich auf Ihrem Gerät verarbeiten.

## Käufe und Apple

Käufe in PrizmX für den App Store werden von Apple abgewickelt. Wir erhalten weder Ihre Zahlungsdaten noch Ihren Namen oder Ihre Apple ID. Apple stellt uns Verkaufsberichte zur Verfügung, aus denen Ihre Identität nicht hervorgeht.

Wenn Sie in den Einstellungen Ihres Geräts festgelegt haben, Analysedaten mit App-Entwicklern zu teilen, kann Apple uns Absturzberichte und aggregierte Nutzungsstatistiken für PrizmX für den App Store bereitstellen. Wir verwenden diese ausschließlich zur Behebung von Problemen. Wie Apple mit diesen Daten umgeht, ist in der [Datenschutzrichtlinie von Apple](https://www.apple.com/legal/privacy/) beschrieben.

## Diese Website

Diese Website wird auf GitHub Pages gehostet. Sie verwendet keine Cookies, keine Analysen und kein Tracking und lädt keine Skripte oder Schriftarten von Drittanbietern. GitHub kann die IP-Adressen von Besuchern zu Sicherheits- und Betriebszwecken protokollieren, wie in der [Datenschutzerklärung von GitHub](https://docs.github.com/site-policy/privacy-policies/github-general-privacy-statement) beschrieben. Downloads von PrizmX Community werden über GitHub Releases bereitgestellt und unterliegen derselben Erklärung.

## Kontaktaufnahme

Wenn Sie uns eine E-Mail senden, erhalten wir Ihre E-Mail-Adresse und Ihre Nachricht. Wir verwenden diese ausschließlich, um Ihnen zu antworten, bewahren sie nur so lange auf, wie es dafür erforderlich ist, und geben sie nicht weiter.

## Ihre Wahlmöglichkeiten und Rechte

Die Apps übermitteln uns keine personenbezogenen Daten, daher haben Sie die direkte Kontrolle über Ihre Daten: Sie können sie in der App einsehen oder löschen oder die App zusammen mit ihren Daten löschen. In PrizmX Community können Sie anonyme Nutzungsdaten jederzeit in den Einstellungen ausschalten. Wir verkaufen keine personenbezogenen Daten und geben sie nicht weiter. Zu jeder Nachricht, die Sie uns gesendet haben, können Sie uns über die unten angegebene Kontaktadresse um Auskunft oder Löschung bitten. Je nach Ihrem Wohnort haben Sie möglicherweise auch das Recht, sich bei einer Datenschutzbehörde zu beschweren.

## Kinder

Die Apps richten sich nicht an Kinder unter 13 Jahren, und wir erheben wissentlich keine personenbezogenen Daten von Kindern.

## Änderungen dieser Datenschutzerklärung

Wenn sich die Apps oder diese Datenschutzerklärung ändern, aktualisieren wir diese Seite und das oben angegebene Datum unter „Zuletzt aktualisiert“. Wesentliche Änderungen werden außerdem in den Versionshinweisen vermerkt.

## Kontakt

Fragen zu dieser Datenschutzerklärung: {% include legal-contact.html %}
