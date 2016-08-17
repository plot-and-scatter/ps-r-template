# R options, adjust as necessary
options("max.print" = 10000000) # Permit printing of large amounts of content
options("scipen" = 999) # Avoid scientific notation

# Note: WORKING.DIR specified in run.r
ROOT.DIR <- WORKING.DIR

INPUT.DIR <- paste(ROOT.DIR, "/data/", sep="")
INPUT.FILE.SEPARATOR <- ","
INPUT.FILE <- paste(INPUT.DIR, "wine.csv", sep="")

OUTPUT.DIR <- paste(ROOT.DIR, "/output/", sep="")
OUTPUT.FILE.SEPARATOR <- "\t"
OUTPUT.FILE.SUMMARY <- paste(OUTPUT.DIR, "order-by-price.tsv", sep="")
OUTPUT.FILE.GRAPH <- paste(OUTPUT.DIR, "graph.png", sep="")

# Analysis settings
# Nothing here now.

# Constants
# Nothing here now.