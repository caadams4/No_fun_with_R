
#Generate one sample from U(0,1)
x = runif(1)

# Create a vector that contains 150000 samples from the uniform distribution on (0,1)
n=150000
b=runif(n)
hist(b)

#Simulate a fair coin toss
u=runif(1)
if (u<0.6) {
  a='head'
}
if (u>=0.6) 
{
  a='tail'
}
print(a)

#Simulate 50000 biased coin tosses
n=50000
d=rep('up',n)
for (i in (1:n))
{
  u=runif(1)
  if (u<0.6) {
    d[i]='head'
  }
  if (u>=0.6) 
  {
    d[i]='tail'
  }
}
barplot(table(d), 
        main="50000 coin flips", 
        col = c('turquoise', 'tomato'), 
        density=20,
        angle=45)
print(table(d)/n)


#Simulate a (2D) random walk

n=20000
f=rep('right',n)
for (i in (1:n))
{
  u=runif(1)
  if (u<0.2) {
    f[i]='up'
  }
  if ((u>=0.2)&(u<0.5))
  {
    f[i]='down'
  }
  if ((u>=0.5)&(u<0.8))
  {
    f[i]='left'
  }
  if (u>=0.8)
  {
    f[i]='right'
  }
}

barplot(table(f), 
        main="20000 samples", 
        col = c('turquoise', 'tomato', 'cornflowerblue'), 
        density=20,
        angle=45)
print(table(f)/n)



#Draw the random walk
x=rep(0,n)
y=rep(0,n)
a = 0
b = 0

for (i in (1:n))
{
  if (f[i]=='down') {
     b= b-1
  }
  if (f[i]=='left') {
    a = a-1
  }
  if (f[i]=='right') {
    a = a + 1
  }
  if (f[i]=='up') {
    b = b+1
  }
  x[i] = a
  y[i] = b
}
plot(x, y, type = "l", lty = 1)


