---
layout: legal
lang: en
locale: en_US
ref: privacy
permalink: /privacy/
title: Privacy Policy
description: >-
  How PrizmX handles your data: no accounts, no analytics and no tracking.
  Profiles and statistics stay on your device.
last_updated: 2026-10-01
---

PrizmX is a proxy client for Apple platforms, developed as an open-source project. This policy explains what information the PrizmX apps and this website handle, and where it goes.

**In short:** PrizmX has no accounts, no analytics, no advertising and no tracking. We do not run servers that receive your data from the apps. Your profiles, settings and statistics stay on your device.

## Who this policy covers

This policy applies to:

- **PrizmX Community**, the free and open-source macOS app distributed through GitHub;
- **PrizmX for App Store**, the iOS and macOS edition distributed through the App Store; and
- this website.

Together we call the two apps "the Apps". "PrizmX", "we" and "us" refer to the PrizmX project and its developers.

## Information we collect

The Apps do not send us any personal information, usage data, crash reports or device identifiers. They contain no third-party analytics, advertising or crash-reporting SDKs, and they do not require an account.

You can verify this yourself: the source code of PrizmX Community and its core libraries is public on [GitHub](https://github.com/PrizmX).

## Information stored on your device

To work, the Apps keep the following data locally, inside their own storage on your device:

- **Profiles and subscriptions** you import, including server addresses, credentials, subscription URLs, rules and policy groups;
- **Settings**, such as the outbound mode, System Proxy, TUN and Allow LAN options;
- **Traffic statistics**: daily totals for about 35 days and monthly totals for 24 months, including the domains and apps that used the most traffic;
- **Connection history** shown in Inspector: a limited list of recent connections with the app, host, matched policy, protocol, duration and byte counts.

This data never leaves your device unless you share or back it up yourself. You can delete it by removing profiles in the App, or by deleting the App together with its data.

On macOS, PrizmX Community reads local process information to show which app opened each connection. This happens on your Mac only.

## Network connections the Apps make

Apart from routing your traffic, the Apps contact the following services. None of them is operated by us, and each receives standard request information such as your IP address under its own privacy policy.

- **Your proxy servers.** Traffic is sent to the servers in your profiles, which are run by you or by providers you choose. Those operators can see your connections according to how their service works. PrizmX does not provide proxy servers or subscriptions.
- **Subscription updates.** Profiles are downloaded from the subscription URLs you add.
- **Latency tests.** To measure node latency, the Apps send small HTTP requests through each node to a test URL (by default `http://www.gstatic.com/generate_204`, or the URL set in your profile). To measure path latency, they open TCP connections to `1.1.1.1` (Cloudflare) and `223.5.5.5` (Alibaba Cloud DNS) and look up `www.apple.com` with your system DNS resolver.
- **External IP lookup.** PrizmX Community shows your current public IP address and its approximate location and network. To do so, it requests `api.ipify.org` and `ipwho.is` when you connect, switch nodes or open the Home view.
- **Rule databases.** If your profile uses `GEOIP` or `GEOSITE` rules, the Apps download the `geoip.metadb` and `geosite.dat` databases from GitHub (MetaCubeX/meta-rules-dat), or from jsDelivr as a fallback, and refresh them about once a week.

## Permissions

The Apps ask for permission to add a VPN configuration (Packet Tunnel). It is used only to route your device's traffic according to your rules, on your device. On macOS, PrizmX Community can also change the system proxy settings while System Proxy is on.

If you turn on **Allow LAN**, other devices on your local network can use your proxy port. Turn it on only on networks you trust.

## HTTPS decryption

PrizmX Community does not decrypt or modify your traffic. If PrizmX for App Store offers HTTP capture, decryption or rewriting, these features will be off by default, will require you to install and trust a certificate yourself, and will process decrypted content only on your device.

## Purchases and Apple

Purchases in PrizmX for App Store are processed by Apple. We do not receive your payment details, name or Apple ID. Apple gives us sales reports that do not identify you.

If you have chosen to share analytics with app developers in your device settings, Apple may give us crash reports and aggregated usage statistics for PrizmX for App Store. We use them only to fix problems. Apple's handling of this data is described in [Apple's Privacy Policy](https://www.apple.com/legal/privacy/).

## This website

This website is hosted on GitHub Pages. It uses no cookies, analytics or tracking, and loads no third-party scripts or fonts. GitHub may log visitors' IP addresses for security and operations, as described in the [GitHub Privacy Statement](https://docs.github.com/site-policy/privacy-policies/github-general-privacy-statement). PrizmX Community downloads are served by GitHub Releases under the same statement.

## Contacting us

If you email us, we receive your email address and your message. We use them only to reply to you, keep them only as long as needed for that, and do not share them.

## Your choices and rights

Because we do not hold personal data from the Apps, you control your data directly: you can view or delete it in the App, or delete the App with its data. We do not sell or share personal information. For any message you have sent us, you can ask us to access or delete it using the contact address below. Depending on where you live, you may also have the right to complain to a data protection authority.

## Children

The Apps are not directed at children under 13, and we do not knowingly collect personal information from children.

## Changes to this policy

When the Apps or this policy change, we will update this page and the "Last updated" date above. Significant changes will also be noted in the release notes.

## Contact

Questions about this policy: {% include legal-contact.html %}
