# Aim: Create interace with R for 2D DRUtES output

# mesh: trimesh with geometry package
# plot3D: persp, persp3D or image

# 1st option using trimesh
# Needed are
# triangles defined by node id
# data with coordinates of each id
# 2
# persp
# already works with output, but creates rectangles
data=read.table("test2.dat")
data=data[,2:4]
plot(data$V2,data$V3)

x=seq(0,100,10)
y=x
z=matrix(data$V4,nrow=length(x))
#persp3d
persp3d(x, y, z, aspect = c(1, 1, 1),col=c("lightblue","blue4","blue3"),
        xlab = "X", ylab = "Y", zlab = "",border="black")


persp(x,y,z, theta=10,col=c("lightblue","blue4","blue3"),border="black")

surf3D(x=matrix(data$V2,nrow=11),y=matrix(data$V3,nrow=11),z=matrix(data$V4,nrow=11),colvar=matrix(data$V4,nrow=11),breaks = seq(-210,-90,10))
image(x,y,z)
# interactive
plot_ly(data,z=z,type='surface',colors="Blues",group_by())
