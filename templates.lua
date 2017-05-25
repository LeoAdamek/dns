function breaker_of_things(domain)
    a(domain, "139.162.242.110")
    aaaa(domain, "2a01:7e00::f03c:91ff:fed5:6a9e")
    alias(concat("www", domain), domain)
    a("megumi", "139.162.242.110")
    aaaa("megumi6", "2a01:7e00::f03c:91ff:fed5:6a9e")
    
    txt("megumi._domainkey", "v=DKIM1; k=rsa; p=p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC9bwJJXjMLUn2JbC4OBMWX5giuhxcGbdtrSEs0+2SWLOe6BDS+xVwsT1StWjBUq/2liJicFoLuxhQFNn5hxzxVKiaPQ3eZc/TNy79nD/m8hqzqCmC6ZAtdg6wYkk6VCMYpHzZ7PgwJB6bE96ci072HaG/YNqKe2xEbM95ryjNo+wIDAQAB")
end
