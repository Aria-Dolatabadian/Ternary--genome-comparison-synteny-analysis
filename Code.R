library(RIdeogram)

data <- read.csv("karyotype_ternary_comparison.csv")

head(data)

table(data$species)

data(synteny_ternary_comparison, package="RIdeogram")
head(synteny_ternary_comparison)

tail(synteny_ternary_comparison, n = 20)

ideogram(karyotype = data, synteny = synteny_ternary_comparison)
convertSVG("chromosome.svg", device = "png")


#if you want use gradient color

data(synteny_ternary_comparison_graident, package="RIdeogram")
ideogram(karyotype = data, synteny = synteny_ternary_comparison_graident)
library("rsvg")
rsvg_pdf("chromosome.svg", "chromosome.pdf")
