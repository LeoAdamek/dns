function breaker_of_things(domain)       
    a("megumi", "139.162.242.110")
    a("mitty", "151.236.220.70")    
    aaaa("megumi", "2a01:7e00::f03c:91ff:fed5:6a9e")    
    aaaa("megumi6", "2a01:7e00::f03c:91ff:fed5:6a9e")

    alias(concat("s", domain), concat("megumi", domain))    
    
    dkim_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDGnojLHjH8AQXRmv63TlYapXXP+TS6no9Meljx8V3RqXWDwqjHTES5UgFdPk5qftHeKOK79/ZzMq5gZrrvN97FOAWb4q+tEKZzm3eKyN4A0w/vs/aLy3gr4JsV1skfrxKmXdtxDDimq7yKGunnBvm52yO2OyUHRdzuBspSU/jQ1QIDAQAB"
    
    txt("megumi._domainkey", "v=DKIM1; k=rsa; p="..dkim_key)
    txt(domain, "v=spf1 a:megumi.breakerofthings.email ip6:2a01:7e00:0:0:f03c:91ff:fed5:6a9e -all")
    txt("_dmarc", "v=DMARC1; p=none")
    
    mx(domain, "megumi.breakerofthings.email", 1)
    mx(domain, "megumi6.breakerofthings.email", 2)
    mx(domain, domain, 3)
end
