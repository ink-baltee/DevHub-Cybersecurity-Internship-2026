# DevHub Cybersecurity Internship 2026
## Phase 1 & Phase 2 — Web Application Security Assessment and Hardening

**Intern:** Imran Nazeer
**Organization:** DevHub
**Duration:** 6 Weeks (May — June 2026)
**Target Application:** OWASP NodeGoat v1.3.0

## Overview
This repository contains all work completed during the DevHub Cybersecurity Internship covering Phase 1 (Weeks 1-3) and Phase 2 (Weeks 4-6). The project involved analyzing a vulnerable Node.js web application, implementing progressive security hardening measures, conducting ethical hacking exercises, and performing comprehensive security audits.

## Phase 1 (Weeks 1-3)

### Week 1 — Security Assessment
- Set up OWASP NodeGoat vulnerable web application
- Performed manual vulnerability testing (XSS, NoSQL Injection, Auth Bypass)
- Ran automated OWASP ZAP scan — discovered 27 vulnerabilities
- Total findings: 33 (6 manual + 27 automated)

### Week 2 — Security Implementation
- Input validation using validator.js
- Password hashing using bcrypt (salt factor 10)
- JWT token authentication using jsonwebtoken
- Secure HTTP headers using Helmet.js
- Server-side logging using Winston

### Week 3 — Penetration Testing
- Performed Nmap penetration testing (2 scans)
- Verified all Week 2 security fixes
- Completed security checklist
- Prepared final Phase 1 report

## Phase 2 (Weeks 4-6)

### Week 4 — Advanced Threat Detection
- Fail2Ban intrusion detection configured
- express-brute login protection with real-time alerts
- Rate limiting using express-rate-limit
- CORS configuration
- API key authentication middleware
- Content Security Policy (CSP) implementation
- HTTP Strict Transport Security (HSTS)

### Week 5 — Ethical Hacking
- Reconnaissance using Nmap and curl
- SQL injection testing using SQLMap
- Manual NoSQL and XSS injection testing
- CSRF protection using csurf middleware
- CSRF token verification using Browser DevTools

### Week 6 — Advanced Security Audits
- OWASP ZAP security audit (15 alerts — 0 High)
- Nikto web server security scan
- Lynis system security audit (Hardening Index: 64/100)
- Docker containerization with security best practices
- Docker Scout vulnerability scanning
- npm audit automatic dependency scanning
- Final penetration test using Nmap

## Setup Instructions
1. Install Node.js v18+ from nodejs.org
2. Install MongoDB 4.4.x from mongodb.com
3. Clone this repository
4. Run: `npm install`
5. Run (from Windows PowerShell): `node artifacts/db-reset.js`
6. Run: `npm start`
7. Open: http://localhost:4000

## Security Implementations Summary
| Fix | Library | Purpose |
|-----|---------|---------|
| Input Validation | validator | Prevent injection attacks |
| Password Hashing | bcrypt | Secure password storage |
| JWT Authentication | jsonwebtoken | Token-based auth |
| Security Headers | helmet | HTTP security headers |
| Logging | winston | Audit trail and error logging |
| Brute Force Protection | express-brute | Block repeated login attempts |
| Rate Limiting | express-rate-limit | Prevent API abuse |
| CORS | cors | Restrict cross-origin access |
| API Key Auth | crypto (built-in) | Protect sensitive endpoints |
| CSRF Protection | csurf | Prevent cross-site request forgery |
| Intrusion Detection | Fail2Ban | System-level attack detection |
| Container Security | Docker + Docker Scout | Secure deployment practices |

## Reports
All detailed reports are available in the `/Reports` folder:
- Imran Nazeer (DHC-2094) DevHub Week 1 Report.pdf
- Imran Nazeer (DHC-2094) DevHub Week 2 Report.pdf
- Imran Nazeer (DHC-2094) DevHub Week 3 Report.pdf
- Imran Nazeer (DHC-2094) DevHub Week 4 Report.pdf
- Imran Nazeer (DHC-2094) DevHub Week 5 Report.pdf
- Imran Nazeer (DHC-2094) DevHub Week 6 Report.pdf

## Technologies Used
- Node.js v18, Express.js, MongoDB 4.4.x
- Kali Linux (WSL2), Windows 11
- OWASP ZAP, Nikto, Lynis, Nmap, SQLMap
- Docker Desktop, Docker Scout
- Burp Suite, Fail2Ban
- validator, bcrypt, jsonwebtoken, helmet, winston
- express-brute, express-rate-limit, cors, csurf

## Repository Link
https://github.com/ink-baltee/DevHub-Cybersecurity-Internship-2026