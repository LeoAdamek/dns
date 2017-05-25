function breaker_of_things(domain)
    a(domain, "139.162.242.110")
    aaaa(domain, "2a01:7e00::f03c:91ff:fed5:6a9e")
    alias(concat("www", domain), domain)
    a("megumi", "139.162.242.110")
    aaaa("megumi6", "2a01:7e00::f03c:91ff:fed5:6a9e")
    
    dkim_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDGnojLHjH8AQXRmv63TlYapXXP+TS6no9Meljx8V3RqXWDwqjHTES5UgFdPk5qftHeKOK79/ZzMq5gZrrvN97FOAWb4q+tEKZzm3eKyN4A0w/vs/aLy3gr4JsV1skfrxKmXdtxDDimq7yKGunnBvm52yO2OyUHRdzuBspSU/jQ1QIDAQAB"
    
    txt("megumi._domainkey", "v=DKIM1; k=rsa; p="..dkim_key)
    txt(domain, "v=spf1 a:megumi.breakerofthings.email a:megumi6.breakerofthings.email -all")
    
    mx(domain, "1", "megumi.breakerofthings.email")
    mx(domain, "2", "megumi6.breakerofthings.email")
    mx(domain, "3", domain)
end
