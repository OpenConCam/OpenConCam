lns <- readLines("../who.md")
lns <- lns[grep("## OpenConCam members", lns):length(lns)]
lns <- lns[-1]
strt <- grep("Name:", lns)
end <- c(strt[-1]-1, length(lns))
f <- tempfile()
writeLines(lns, f)
x <- read.dcf(f)
x <- gsub("\n", " ", x)
x <- gsub("\t", " ", x)

