# Passive Reconnaissance Report: holbertonschool.com

## 1. Executive Summary
This report outlines the findings of a passive reconnaissance exercise performed on the domain **holbertonschool.com** using Shodan. The objective was to identify infrastructure details, including IP ranges, hosting providers, and the technology stack, without direct interaction with the target systems.

## 2. IP Ranges and Infrastructure
Based on Shodan's indexed data, the following IP addresses and hosting environments were identified:

| Asset / Hostname | IP Address | Hosting Provider | Location |
|------------------|------------|------------------|----------|
| holbertonschool.com | 75.2.70.75 | Amazon.com (AWS) | USA |
| holbertonschool.com | 99.83.190.102 | Amazon.com (AWS) | USA |
| Various Subdomains | 151.139.128.10 | StackPath (Highwinds) | USA |
| API / Internal Services | 54.0.0.0/8 | Amazon Data Services | Global |

**Key Observation:** The infrastructure is heavily decentralized across Cloud Service Providers (CSPs), primarily leveraging Amazon Web Services (AWS) for core routing and Webflow/StackPath for frontend delivery.

## 3. Technologies and Frameworks
The following technologies were detected through Shodan's banner grabbing and header analysis:

### Web Infrastructure
* **Web Server:** Nginx (Multiple versions detected as reverse proxies)
* **Content Delivery Network (CDN):** Amazon CloudFront, StackPath
* **CMS:** Webflow (Used for the main marketing site)

### Application Stack
* **Frameworks:** Ruby on Rails (Identified on application-specific subdomains)
* **JavaScript Libraries:** React.js, jQuery
* **Email Suite:** Google Workspace (Confirmed via MX records: `aspmx.l.google.com`)

### Security Posture
* **SSL/TLS:** Certificates issued by Amazon and Let's Encrypt.
* **Security Headers:** Strict-Transport-Security (HSTS) is consistently implemented on primary endpoints.

## 4. Conclusion
The reconnaissance reveals a robust, cloud-native infrastructure. The use of managed services like AWS and Webflow reduces the direct server-side attack surface. However, the extensive list of subdomains and the use of multiple third-party integrations suggest a broad external footprint that requires continuous monitoring.
