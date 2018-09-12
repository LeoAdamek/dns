function breaker_of_things(domain)
    
    -- Built-in aliasing
    alias(concat("www", domain), domain)
    alias(concat("s", domain),domain)
    
    a(domain, "139.162.242.110")
    aaaa(domain, "2a01:7e00::f03c:91ff:fed5:6a9e")
    a("megumi", "139.162.242.110")
    aaaa("megumi", "2a01:7e00::f03c:91ff:fed5:6a9e")
    aaaa("megumi6", "2a01:7e00::f03c:91ff:fed5:6a9e")
    
    a("shoko", "81.187.27.16")
    aaaa("shoko", "2001:8b0:92c::1")
    aaaa("kanako", "2001:8b0:92c::2")
    aaaa("mashiro", "2001:8b0:92c::4")
    
    
    
    dkim_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDGnojLHjH8AQXRmv63TlYapXXP+TS6no9Meljx8V3RqXWDwqjHTES5UgFdPk5qftHeKOK79/ZzMq5gZrrvN97FOAWb4q+tEKZzm3eKyN4A0w/vs/aLy3gr4JsV1skfrxKmXdtxDDimq7yKGunnBvm52yO2OyUHRdzuBspSU/jQ1QIDAQAB"
    
    txt("megumi._domainkey", "v=DKIM1; k=rsa; p="..dkim_key)
    txt(domain, "v=spf1 a:megumi.breakerofthings.email ip6:2a01:7e00:0:0:f03c:91ff:fed5:6a9e -all")
    txt("_dmarc", "v=DMARC1; p=none")
    
    mx(domain, "megumi.breakerofthings.email", 1)
    mx(domain, "megumi6.breakerofthings.email", 2)
    mx(domain, domain, 3)
    
    for n=1,32 do
       txt("x"..n, "Placeholder TXT  Record") 
    end
end
