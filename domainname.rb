# Better Solution
def domain_name(url)
  URI.parse(url).host.split('.').last(2)[0]
end

p domain_name("http://github.com/carbonfive/raygun")# == "github"
p domain_name("http://www.zombie-bites.com") #== "zombie-bites"
p domain_name("https://www.cnet.com") #== "cnet"
