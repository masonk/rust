É
Ň
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
.
Identity

input"T
output"T"	
Ttype
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
1
Square
x"T
y"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "train"serve*1.7.02v1.7.0-3-g024aecf414¨w
F
xPlaceholder*
dtype0*
_output_shapes
:*
shape:
F
yPlaceholder*
dtype0*
_output_shapes
:*
shape:
^
random_uniform/shapeConst*
valueB:*
dtype0*
_output_shapes
:
W
random_uniform/minConst*
valueB
 *  ż*
dtype0*
_output_shapes
: 
W
random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

random_uniform/RandomUniformRandomUniformrandom_uniform/shape*
dtype0*
_output_shapes
:*
seed2 *

seed *
T0
b
random_uniform/subSubrandom_uniform/maxrandom_uniform/min*
_output_shapes
: *
T0
p
random_uniform/mulMulrandom_uniform/RandomUniformrandom_uniform/sub*
T0*
_output_shapes
:
b
random_uniformAddrandom_uniform/mulrandom_uniform/min*
T0*
_output_shapes
:
m
w
VariableV2*
_output_shapes
:*
	container *
shape:*
shared_name *
dtype0

w/AssignAssignwrandom_uniform*
use_locking(*
T0*
_class

loc:@w*
validate_shape(*
_output_shapes
:
P
w/readIdentityw*
T0*
_class

loc:@w*
_output_shapes
:
_
zeros/shape_as_tensorConst*
valueB:*
dtype0*
_output_shapes
:
P
zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
h
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0*
_output_shapes
:
m
b
VariableV2*
shared_name *
dtype0*
_output_shapes
:*
	container *
shape:

b/AssignAssignbzeros*
use_locking(*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
:
P
b/readIdentityb*
T0*
_class

loc:@b*
_output_shapes
:
8
mulMulw/readx*
T0*
_output_shapes
:
<
y_hatAddmulb/read*
T0*
_output_shapes
:
7
subSuby_haty*
_output_shapes
:*
T0
8
SquareSquaresub*
T0*
_output_shapes
:
5
RankRankSquare*
_output_shapes
: *
T0
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
Y
MeanMeanSquarerange*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
R
gradients/ShapeConst*
dtype0*
_output_shapes
: *
valueB 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
h
gradients/Mean_grad/ShapeShapeSquare*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
out_type0

gradients/Mean_grad/SizeSizegradients/Mean_grad/Shape*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
_output_shapes
: 

gradients/Mean_grad/addAddrangegradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
˛
gradients/Mean_grad/modFloorModgradients/Mean_grad/addgradients/Mean_grad/Size*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
gradients/Mean_grad/Shape_1Shapegradients/Mean_grad/mod*
T0*
out_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*
_output_shapes
:

gradients/Mean_grad/range/startConst*
value	B : *,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 

gradients/Mean_grad/range/deltaConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ý
gradients/Mean_grad/rangeRangegradients/Mean_grad/range/startgradients/Mean_grad/Sizegradients/Mean_grad/range/delta*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0

gradients/Mean_grad/Fill/valueConst*
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0*
_output_shapes
: 
Ë
gradients/Mean_grad/FillFillgradients/Mean_grad/Shape_1gradients/Mean_grad/Fill/value*
T0*

index_type0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

!gradients/Mean_grad/DynamicStitchDynamicStitchgradients/Mean_grad/rangegradients/Mean_grad/modgradients/Mean_grad/Shapegradients/Mean_grad/Fill*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/Maximum/yConst*
_output_shapes
: *
value	B :*,
_class"
 loc:@gradients/Mean_grad/Shape*
dtype0
Ä
gradients/Mean_grad/MaximumMaximum!gradients/Mean_grad/DynamicStitchgradients/Mean_grad/Maximum/y*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ź
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Shapegradients/Mean_grad/Maximum*
T0*,
_class"
 loc:@gradients/Mean_grad/Shape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/floordiv*

Tmultiples0*
T0*
_output_shapes
:
j
gradients/Mean_grad/Shape_2ShapeSquare*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
gradients/Mean_grad/Shape_3Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_2gradients/Mean_grad/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
e
gradients/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_3gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
a
gradients/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/Maximum_1Maximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum_1/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordiv_1FloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum_1*
T0*
_output_shapes
: 
p
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv_1*
_output_shapes
: *

DstT0*

SrcT0
}
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*
_output_shapes
:
~
gradients/Square_grad/ConstConst^gradients/Mean_grad/truediv*
_output_shapes
: *
valueB
 *   @*
dtype0
e
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0*
_output_shapes
:
}
gradients/Square_grad/Mul_1Mulgradients/Mean_grad/truedivgradients/Square_grad/Mul*
_output_shapes
:*
T0
f
gradients/sub_grad/ShapeShapey_hat*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*
out_type0
d
gradients/sub_grad/Shape_1Shapey*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0
¤
gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:

gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0*
_output_shapes
:
¨
gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
Z
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
_output_shapes
:*
T0

gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
Ë
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape*
_output_shapes
:
Ń
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1*
_output_shapes
:
f
gradients/y_hat_grad/ShapeShapemul*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
f
gradients/y_hat_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ş
*gradients/y_hat_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/y_hat_grad/Shapegradients/y_hat_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
¸
gradients/y_hat_grad/SumSum+gradients/sub_grad/tuple/control_dependency*gradients/y_hat_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/y_hat_grad/ReshapeReshapegradients/y_hat_grad/Sumgradients/y_hat_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ź
gradients/y_hat_grad/Sum_1Sum+gradients/sub_grad/tuple/control_dependency,gradients/y_hat_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/y_hat_grad/Reshape_1Reshapegradients/y_hat_grad/Sum_1gradients/y_hat_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/y_hat_grad/tuple/group_depsNoOp^gradients/y_hat_grad/Reshape^gradients/y_hat_grad/Reshape_1
Ó
-gradients/y_hat_grad/tuple/control_dependencyIdentitygradients/y_hat_grad/Reshape&^gradients/y_hat_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/y_hat_grad/Reshape*
_output_shapes
:
Ű
/gradients/y_hat_grad/tuple/control_dependency_1Identitygradients/y_hat_grad/Reshape_1&^gradients/y_hat_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/y_hat_grad/Reshape_1*
_output_shapes
:
b
gradients/mul_grad/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
d
gradients/mul_grad/Shape_1Shapex*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
r
gradients/mul_grad/MulMul-gradients/y_hat_grad/tuple/control_dependencyx*
_output_shapes
:*
T0

gradients/mul_grad/SumSumgradients/mul_grad/Mul(gradients/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
y
gradients/mul_grad/Mul_1Mulw/read-gradients/y_hat_grad/tuple/control_dependency*
_output_shapes
:*
T0
Ľ
gradients/mul_grad/Sum_1Sumgradients/mul_grad/Mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
Í
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape*
_output_shapes
:
Ń
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1*
_output_shapes
:
X
train/learning_rateConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
Î
#train/update_w/ApplyGradientDescentApplyGradientDescentwtrain/learning_rate+gradients/mul_grad/tuple/control_dependency*
_output_shapes
:*
use_locking( *
T0*
_class

loc:@w
Ň
#train/update_b/ApplyGradientDescentApplyGradientDescentbtrain/learning_rate/gradients/y_hat_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class

loc:@b*
_output_shapes
:
Y
trainNoOp$^train/update_w/ApplyGradientDescent$^train/update_b/ApplyGradientDescent
"
initNoOp	^w/Assign	^b/Assign
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_634d4f54f3914a8f8118bc7525a1b8af/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
t
save/SaveV2/tensor_namesConst"/device:CPU:0*
valueBBbBw*
dtype0*
_output_shapes
:
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbw"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
w
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBBbBw*
dtype0*
_output_shapes
:
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2

save/AssignAssignbsave/RestoreV2*
_output_shapes
:*
use_locking(*
T0*
_class

loc:@b*
validate_shape(

save/Assign_1Assignwsave/RestoreV2:1*
T0*
_class

loc:@w*
validate_shape(*
_output_shapes
:*
use_locking(
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
train_op	

train"`
	variablesSQ
+
w:0w/Assignw/read:02random_uniform:0
"
b:0b/Assignb/read:02zeros:0"j
trainable_variablesSQ
+
w:0w/Assignw/read:02random_uniform:0
"
b:0b/Assignb/read:02zeros:0*v
tensorflow/serving/regressX

x
x:0

y
y:0
out
y_hat:0tensorflow/serving/regress