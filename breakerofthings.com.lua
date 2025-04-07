breaker_of_things(_a)

-- Github verification
txt("_github-pages-challenge-LeoAdamek", "9aeeaab8cea30f9313bbd2cf681c98", 3600)

-- Github pages alias
github_pages_v4 = { "185.199.108.153", "185.199.109.153", "185.199.110.153", "185.199.111.153" }
github_pages_v6 = { "2606:50c0:8000::153", "2606:50c0:8001::153", "2606:50c0:8002::153", "2606:50c0:8003::153" }

for idx = 1, 4 do
  a(_a, github_pages_v4[idx])
  aaaa(_a, github_pages_v4[idx])
end

cname("www", _a)  
