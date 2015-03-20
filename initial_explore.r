dat = read.csv('data/trainLabels.csv')
head(dat)
dat = transform(dat,
  side = gsub('^[0-9]*_', '', image), 
  subject_id = gsub('(_left|_right)$', '', image)
)
table(dat$level)
table(dat$side)
length(table(dat$subject_id))
head(dat)

dat2 = merge(dat[dat$side == 'left', ], 
             dat[dat$side == 'right', ], 
             by = 'subject_id')
table(dat2$level.x == dat2$level.y)

dim(dat)