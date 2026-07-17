# Bash Scripts

A collection of bash scripts for reconnaissance and information gathering during security assessments and bug bounty hunting.

## scripts

### simple_recon.sh

A quick reconnaissance script that discovers subdomains for a given domain and checks which ones are alive.


---

### enum_ents.sh

Subdomain enumeration with two modes: passive and active.

---

### perm-basic.sh

A basic subdomain permutation script that generates subdomain candidates by prepending a wordlist entry to the target domain.

---

### nodes_creator.sh

Creates a DNS brute-force wordlist by appending a domain to each line of a node file.


### extractor.sh

Extracts URL endpoints and path patterns from a web page's HTML/JavaScript source.

---

### infodisc404.sh

Hunts for information disclosure by checking archived URLs from the Wayback Machine for sensitive file types.

---

### oredirect.sh

Hunts for open redirect vulnerabilities by searching archived URLs for common redirect-related parameters.

---
