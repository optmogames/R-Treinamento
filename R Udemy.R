###### Citações e Demo ##########

#Como citar o R
citation()
demo(persp)
demo(graphics)

########### R Como Calculadora ###################

# Operadores (+ - / * ^) e ordem das operações

15 + 9

15-9

15*2

15/2

2^2

4+(7*7)

((4+7)*(8-1)/2)

#Funções prontas
sqrt(4)
sin(40)
cos(30)
prod(30,4)
prod(30,30,40,50)
log(4,10)
log(4)
factorial(9)
help(log)

########## Vetores ####################
# C() concatenar valores

Idade<-c(23,34,56) 
Idade

# scan() ler valores do terminal
Idade<-scan()

# Tamanho do Vetor
length(Idade)

Nomes<-c("João", "Maria", "José")
Nomes

length(Nomes)

## Acessar / Modificar elementos do Vetor

Idade[3]
Idade[8]

Idade[1:5]
Idade[5:9]

Idade[c(2,7,8)]

Idade[8]<- 24

Idade[1:3]<- 12
Idade[1:3]<-12:14

length(Idade)
Idade

idade_mod <-Idade[-3]
idade_mod

length(idade_mod)

idade_mod[8:10]<-0

### Operações com vetores (somas, subtrações, mutipl., produto)

idades<-scan()
idades+2
idades-2
idades*3
idades/2
idades^2
sqrt(idades)
log(idades)

Idades_v2<- idades*2
Idades_v2

idades+Idades_v2

Idades_v2-idades

Idades_v2*idades

max(idades)
min(idades)

sort(idades)

?sort()

sort(idades, decreasing = TRUE)
sort(idades, decreasing = FALSE)

idades < Idades_v2
idades > Idades_v2

idades <= Idades_v2
idades >= Idades_v2

idades == Idades_v2

idades[3] == Idades_v2[4]

idades != Idades_v2

union(idades,Idades_v2)
intersect(idades,Idades_v2)
setdiff(idades,Idades_v2)

#ls() mostra todas variaveis criadas
ls()

#remove vetor
remove(idade_mod)


######### Sequencias ###############
# : operador sequencial

1:6

3:8

seq(2,10)
seq(2,10,0.5)
seq(2,10,2)
seq(20,100,10)
c<-seq(20,100,10)
length(c)
c


# Seq Usando Repetições

rep(5,10)
rep("João",10)
rep(1:3,5)
rep(idades,3)

rep(1:3,5, each=4)
rep(1:3, each=4)

cidades<-c("salvador","recife","olinda")

cidades

rep(cidades, each=2)

rep(cidades, c(3,5,7))

# Seq Amostras Aleatórias

sample(2:50,4)
sample(20:50,10)

sample(1:10,3)
sample(1:10,3, replace = TRUE)
sample(1:10,3, replace = FALSE)

n<-sample(1:10,3, replace = FALSE)
n
sort(n)
sort(n, decreasing = TRUE)

ls()

n<-c(3,6,2,1)
#O Maior Rank é o Maior número
rank(n)

########## Matrizes  >>> Coleção de vetores em linhas e colunas, do mesmo tipo

v1<-c(12,30,20)
v1
v2<-c(30,60,90)
v2

rbind(v1,v2)
cbind(v1,v2)

a<-rbind(v1,v2)
b<-cbind(v1,v2)

a
b

#dim retorna linhas e colunas

dim(a)
dim(b)

v1<-c("recife", "olinda", "Escada")

cbind(v1,v2)
rbind(v1,v2)

#Usando o comando matrix

matrix(0,2,4)

matrix("Teste",2,4)

matrix(1:20,4,4)

matrix(1:20,4,4, byrow = TRUE)
matrix(1:20,nrow=4,ncol=4, byrow = TRUE)

matrix(c("a","b","c","d"), 2,2)
matrix(c("a","b","c","d"), 2,2,byrow = TRUE)

a<-matrix(1:20,4,5)
a

#a[Linha,Coluna]
a[3,3]
a[,3]
a[3,]

a[1:3,3:5]
a[c(1,3,4),c(3,4)]

a[c(2,4),]
a[,c(3,4)]

ncol(a)
nrow(a)
dim(a)

a
a[1,3]<-90
a[,3]<-c(30,40,50,60)
a[2,]<-100
ls()

v1
v1<-c(1,2,3,4)
a2<-cbind(a,v1)
a2
a

a2[-4,]
a2[,-2]

a<-matrix(0,5,5)
a
a+4
a-4
a<-matrix(10,5,5)

a

a-5
a*(-3)
a/5
a^3
sqrt(a)
log(a)
mean(a)
b<-a+2

a
b

a+b
a-b
a*b
b+a

#produto matricial
a%*%b

#Determinante de Matriz e diagonal

det(a)
diag(a)

#transpor matriz

b<-a[,-3]
b

dim(b)
dim(t(b))

t(b)
t(a)

a<-matrix(1:25,5,5)
a[1,]<-c(0,0,0,0,500)
a[,2]<-c(0,0,0,0,0)

a
image(a)
contour(a)

persp(a)

volcano
image(volcano)
persp(volcano)
contour(volcano)

a<-matrix(0,3,3)
a

ncolunas<-c("Idade","sexo","estado civil")
nlinhas<-c("paulo","joão","maria")
a<-matrix(0,3,3,dimnames = list(nlinhas,ncolunas))
a

################ Array : Coleção de matrizes #################

a<-matrix(1:20,4,5)
a<-array(1:20,dim = c(4,5))

a
a<-array(1:20,dim = c(4,5,4))

v1<-c(40,300,150)
v2<-c(50,120,230)
v3<-c(24,15,23)

a<-array(c(v1,v2,v3),dim = c(3,3,3))
a

r.names<-c("marcos","joao","maria")
r.names
c.names<-c("Alimentacao","moradia","transportes")
c.names
matrizes.names<-c("jan","fev","mar")
matrizes.names

a<-array(c(v1,v2,v3),dim = c(3,3,3),dimnames =list(r.names,c.names,matrizes.names))
a

dim(a)
a[1,1,1]

a[3,,]

g.maria<-a[3,,]
g.maria
g.joao<-a[2,,]
g.joao
g.marcos<-a[1,,]
g.marcos

a[3,1,]

a[,2,]

a[1,,1]<-c(50,20,30)
a
a[1,,1]

a[3,1,3]<-200

a[1,2,2:3]
a[2,,1:2]

sum(a[1,,])
marcos<-a[1,,]

marcos
marcos[1,]
mean(marcos[2,])
sum(marcos[1,])

#apply c(1) linha
apply(a,c(1),sum)
apply(a,c(1),mean)

#apply c(2) coluna
apply(a,c(2),sum)
apply(a,c(2),mean)


apply(a[1,,],c(1),sum)
apply(marcos,c(2),mean)

moradia<-a[,2,]
moradia

apply(moradia,c(1),sum)
apply(moradia,c(1),mean)
apply(moradia,c(2),sum)
apply(moradia,c(2),mean)

############### Fatores #############################


