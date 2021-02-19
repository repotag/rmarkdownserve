require 'json'
require 'cgi'

# Output fulldoc.txt and fragments.json for use with curl scripts

c1 = <<EOF
```{r first_r_chunk}
vec <- c(1, 2, 3)
print(vec)
```
EOF

c2 = <<EOF
```{r second_r_chunk, echo = TRUE}
vec2 <- c(10, 20, 30)
vec3 <- vec * vec2
print(vec3)     
```
EOF

c3 = <<EOF
```{r echo = FALSE}
data(mpg, package="ggplot2")
mpg_select <- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"), ]
# Scatterplot
theme_set(theme_bw())  # pre-set the bw theme.
g <- ggplot(mpg_select, aes(displ, cty)) + 
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart")
g + geom_jitter(aes(col=manufacturer, size=hwy)) + 
  geom_smooth(aes(col=manufacturer), method="lm", se=F)
```
EOF

fulldoc = <<EOF
#{c1}

<p>Some separating text</p>

#{c2}

<p>More separating</p>

#{c3}
EOF

fulldoc_data = "doc=#{CGI.escape(fulldoc)}"
fragments_json = ({:fragments => [c1, c2, c3]}).to_json

File.open('fulldoc.txt','w').puts(fulldoc_data)
File.open('fragments.json','w').puts(fragments_json)