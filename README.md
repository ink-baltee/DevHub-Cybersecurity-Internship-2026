# DevHub Cybersecurity Internship 2026
## Phase 1 — Web Application Security Assessment and Hardening

**Intern:** Imran Nazeer
**Organization:** DevHub
**Duration:** 3 Weeks (May 2026)
**Target Application:** OWASP NodeGoat v1.3.0

## Overview
This repository contains all work completed during Phase 1 of the DevHub 
Cybersecurity Internship. The project involved analyzing a vulnerable web 
application, implementing security fixes, and verifying the fixes through 
penetration testing.

## Week 1 — Security Assessment
- Set up OWASP NodeGoat vulnerable web application
- Performed manual vulnerability testing (XSS, NoSQL Injection, Auth Bypass)
- Ran automated OWASP ZAP scan — discovered 27 vulnerabilities
- Total findings: 33 (6 manual + 27 automated)

## Week 2 — Security Implementation
- Input validation using validator.js
- Password hashing using bcrypt (salt factor 10)
- JWT token authentication using jsonwebtoken
- Secure HTTP headers using Helmet.js
- Server-side logging using Winston

## Week 3 — Penetration Testing
- Performed Nmap penetration testing (2 scans)
- Verified all Week 2 security fixes are working
- Completed security checklist (26/36 items implemented)
- Prepared final reports and GitHub submission

## Setup Instructions
1. Install Node.js v18+ from nodejs.org
2. Install MongoDB 4.4.29 from mongodb.com
3. Clone this repository
4. Run: `npm install`
5. Run: `npm run db:seed`
6. Run: `npm start`
7. Open: http://localhost:4000

## Security Fixes Applied
| Fix | Library | Purpose |
|-----|---------|---------|
| Input Validation | validator | Prevent injection attacks |
| Password Hashing | bcrypt | Secure password storage |
| JWT Authentication | jsonwebtoken | Token-based auth |
| Security Headers | helmet | HTTP security headers |
| Logging | winston | Audit trail and error logging |

## Reports
All detailed reports are available in the `/Reports` folder:
- Week1_Security_Assessment_Report_FINAL.pdf
- Week2_Security_Implementation_Report.pdf
- Week3_Penetration_Testing_Final_Report.pdf

## Technologies Used
- Node.js, Express.js, MongoDB
- OWASP NodeGoat v1.3.0
- OWASP ZAP, Nmap 7.99
- validator, bcrypt, jsonwebtoken, helmet, winston

## Repository Link
https://github.com/ink-baltee/DevHub-Cybersecurity-Internship-2026