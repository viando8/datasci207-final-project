у╔8
а­
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
ђ
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
э
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements(
handleіжУelement_dtype"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ
ћ
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
ѕ"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628мј6
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:*
dtype0
є
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/v/dense_3/kernel

)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes

:@*
dtype0
є
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/m/dense_3/kernel

)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes

:@*
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:@*
dtype0
є
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/v/dense_2/kernel

)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes

:@@*
dtype0
є
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*&
shared_nameAdam/m/dense_2/kernel

)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes

:@@*
dtype0
Љ
Adam/v/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_nameAdam/v/lstm_3/lstm_cell/bias
і
0Adam/v/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
Љ
Adam/m/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_nameAdam/m/lstm_3/lstm_cell/bias
і
0Adam/m/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
Г
(Adam/v/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*9
shared_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel
д
<Adam/v/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_3/lstm_cell/recurrent_kernel*
_output_shapes
:	@ђ*
dtype0
Г
(Adam/m/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*9
shared_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel
д
<Adam/m/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_3/lstm_cell/recurrent_kernel*
_output_shapes
:	@ђ*
dtype0
џ
Adam/v/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*/
shared_name Adam/v/lstm_3/lstm_cell/kernel
Њ
2Adam/v/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/kernel* 
_output_shapes
:
ђђ*
dtype0
џ
Adam/m/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*/
shared_name Adam/m/lstm_3/lstm_cell/kernel
Њ
2Adam/m/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/kernel* 
_output_shapes
:
ђђ*
dtype0
Љ
Adam/v/lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_nameAdam/v/lstm_2/lstm_cell/bias
і
0Adam/v/lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_2/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
Љ
Adam/m/lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*-
shared_nameAdam/m/lstm_2/lstm_cell/bias
і
0Adam/m/lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_2/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
«
(Adam/v/lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*9
shared_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel
Д
<Adam/v/lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
ђђ*
dtype0
«
(Adam/m/lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*9
shared_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel
Д
<Adam/m/lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
ђђ*
dtype0
Ў
Adam/v/lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*/
shared_name Adam/v/lstm_2/lstm_cell/kernel
њ
2Adam/v/lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_2/lstm_cell/kernel*
_output_shapes
:	dђ*
dtype0
Ў
Adam/m/lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*/
shared_name Adam/m/lstm_2/lstm_cell/kernel
њ
2Adam/m/lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_2/lstm_cell/kernel*
_output_shapes
:	dђ*
dtype0
Ќ
Adam/v/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*.
shared_nameAdam/v/embedding_1/embeddings
љ
1Adam/v/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding_1/embeddings*
_output_shapes
:	љNd*
dtype0
Ќ
Adam/m/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*.
shared_nameAdam/m/embedding_1/embeddings
љ
1Adam/m/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding_1/embeddings*
_output_shapes
:	љNd*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
Ѓ
lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_namelstm_3/lstm_cell/bias
|
)lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
Ъ
!lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@ђ*2
shared_name#!lstm_3/lstm_cell/recurrent_kernel
ў
5lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_3/lstm_cell/recurrent_kernel*
_output_shapes
:	@ђ*
dtype0
ї
lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*(
shared_namelstm_3/lstm_cell/kernel
Ё
+lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/kernel* 
_output_shapes
:
ђђ*
dtype0
Ѓ
lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_namelstm_2/lstm_cell/bias
|
)lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
а
!lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*2
shared_name#!lstm_2/lstm_cell/recurrent_kernel
Ў
5lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
ђђ*
dtype0
І
lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*(
shared_namelstm_2/lstm_cell/kernel
ё
+lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell/kernel*
_output_shapes
:	dђ*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@@*
dtype0
Ѕ
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	љNd*'
shared_nameembedding_1/embeddings
ѓ
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	љNd*
dtype0
ё
!serving_default_embedding_1_inputPlaceholder*'
_output_shapes
:         d*
dtype0*
shape:         d
╠
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_1_inputembedding_1/embeddingslstm_2/lstm_cell/kernellstm_2/lstm_cell/bias!lstm_2/lstm_cell/recurrent_kernellstm_3/lstm_cell/kernellstm_3/lstm_cell/bias!lstm_3/lstm_cell/recurrent_kerneldense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *-
f(R&
$__inference_signature_wrapper_178327

NoOpNoOp
ЬT
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЕT
valueЪTBюT BЋT
ю
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
┴
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec*
д
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
Ц
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator* 
д
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias*
R
0
@1
A2
B3
C4
D5
E6
/7
08
>9
?10*
R
0
@1
A2
B3
C4
D5
E6
/7
08
>9
?10*
* 
░
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0
Ltrace_1* 

Mtrace_0
Ntrace_1* 
* 
Ђ
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla*

Vserving_default* 

0*

0*
* 
Њ
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

\trace_0* 

]trace_0* 
jd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1
B2*

@0
A1
B2*
* 
Ъ

^states
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
6
htrace_0
itrace_1
jtrace_2
ktrace_3* 
* 
с
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
r_random_generator
s
state_size

@kernel
Arecurrent_kernel
Bbias*
* 

C0
D1
E2*

C0
D1
E2*
* 
Ъ

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
ђtrace_2
Ђtrace_3* 
* 
в
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_random_generator
Ѕ
state_size

Ckernel
Drecurrent_kernel
Ebias*
* 

/0
01*

/0
01*
* 
ў
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

Јtrace_0* 

љtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
ќ
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 

ќtrace_0
Ќtrace_1* 

ўtrace_0
Ўtrace_1* 
* 

>0
?1*

>0
?1*
* 
ў
џnon_trainable_variables
Џlayers
юmetrics
 Юlayer_regularization_losses
ъlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

Ъtrace_0* 

аtrace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_2/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_2/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_2/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_3/lstm_cell/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_3/lstm_cell/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_3/lstm_cell/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

А0
б1*
* 
* 
* 
* 
* 
* 
╚
P0
Б1
ц2
Ц3
д4
Д5
е6
Е7
ф8
Ф9
г10
Г11
«12
»13
░14
▒15
▓16
│17
┤18
х19
Х20
и21
И22*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
Б0
Ц1
Д2
Е3
Ф4
Г5
»6
▒7
│8
х9
и10*
]
ц0
д1
е2
ф3
г4
«5
░6
▓7
┤8
Х9
И10*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

@0
A1
B2*

@0
A1
B2*
* 
ў
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

Йtrace_0
┐trace_1* 

└trace_0
┴trace_1* 
* 
* 
* 
* 

'0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1
E2*

C0
D1
E2*
* 
ъ
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses*

Кtrace_0
╚trace_1* 

╔trace_0
╩trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
╦	variables
╠	keras_api

═total

╬count*
M
¤	variables
л	keras_api

Лtotal

мcount
М
_fn_kwargs*
hb
VARIABLE_VALUEAdam/m/embedding_1/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/embedding_1/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_2/lstm_cell/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_2/lstm_cell/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_2/lstm_cell/recurrent_kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_2/lstm_cell/recurrent_kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_2/lstm_cell/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm_2/lstm_cell/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/lstm_3/lstm_cell/recurrent_kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/lstm_3/lstm_cell/recurrent_kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

═0
╬1*

╦	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Л0
м1*

¤	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ё

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslstm_2/lstm_cell/kernel!lstm_2/lstm_cell/recurrent_kernellstm_2/lstm_cell/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/embedding_1/embeddingsAdam/v/embedding_1/embeddingsAdam/m/lstm_2/lstm_cell/kernelAdam/v/lstm_2/lstm_cell/kernel(Adam/m/lstm_2/lstm_cell/recurrent_kernel(Adam/v/lstm_2/lstm_cell/recurrent_kernelAdam/m/lstm_2/lstm_cell/biasAdam/v/lstm_2/lstm_cell/biasAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcountConst*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__traced_save_181742
 	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_1/embeddingsdense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslstm_2/lstm_cell/kernel!lstm_2/lstm_cell/recurrent_kernellstm_2/lstm_cell/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/embedding_1/embeddingsAdam/v/embedding_1/embeddingsAdam/m/lstm_2/lstm_cell/kernelAdam/v/lstm_2/lstm_cell/kernel(Adam/m/lstm_2/lstm_cell/recurrent_kernel(Adam/v/lstm_2/lstm_cell/recurrent_kernelAdam/m/lstm_2/lstm_cell/biasAdam/v/lstm_2/lstm_cell/biasAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcount*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *+
f&R$
"__inference__traced_restore_181868Њ═4
¤

З
C__inference_dense_3_layer_call_and_return_conditional_losses_177632

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╔К
╬
B__inference_lstm_2_layer_call_and_return_conditional_losses_178758
inputs_0:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         d\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         dq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЁ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_178560*
condR
while_cond_178559*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
к	
├
while_cond_178866
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178866___redundant_placeholder04
0while_while_cond_178866___redundant_placeholder14
0while_while_cond_178866___redundant_placeholder24
0while_while_cond_178866___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
═
c
*__inference_dropout_1_layer_call_fn_180920

inputs
identityѕбStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_177620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Р~
╠
B__inference_lstm_2_layer_call_and_return_conditional_losses_177887

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_177753*
condR
while_cond_177752*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d         ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         dђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         dђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
╣t
ѓ	
while_body_179481
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђб
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_178003
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178003___redundant_placeholder04
0while_while_cond_178003___redundant_placeholder14
0while_while_cond_178003___redundant_placeholder24
0while_while_cond_178003___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╝
З
*__inference_lstm_cell_layer_call_fn_181258

inputs
states_0
states_1
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176679o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181250:&"
 
_user_specified_name181248:&"
 
_user_specified_name181246:QM
'
_output_shapes
:         @
"
_user_specified_name
states_1:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
н
х
'__inference_lstm_2_layer_call_fn_178387

inputs
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         dђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_177887t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         dђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178383:&"
 
_user_specified_name178381:&"
 
_user_specified_name178379:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
Љ├
ѓ	
while_body_177007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         db
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         d}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>о
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЕ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ш
Ц
G__inference_embedding_1_layer_call_and_return_conditional_losses_176831

inputs*
embedding_lookup_176826:	љNd
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         d╗
embedding_lookupResourceGatherembedding_lookup_176826Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/176826*+
_output_shapes
:         dd*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:         ddu
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:         dd5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name176826:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
▄ѓ
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176482

inputs

states
states_11
split_readvariableop_resource:
ђђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         ђR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         ђ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         @_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         @_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         @_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @c
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @c
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @c
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @c
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         @U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         @Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         @ю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
╩

З
C__inference_dense_2_layer_call_and_return_conditional_losses_177603

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
╠
х
'__inference_lstm_3_layer_call_fn_179659

inputs
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_178139o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name179655:&"
 
_user_specified_name179653:&"
 
_user_specified_name179651:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
Д9
щ
B__inference_lstm_3_layer_call_and_return_conditional_losses_176764

inputs$
lstm_cell_176680:
ђђ
lstm_cell_176682:	ђ#
lstm_cell_176684:	@ђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maskТ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_176680lstm_cell_176682lstm_cell_176684*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176679n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_176680lstm_cell_176682lstm_cell_176684*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176694*
condR
while_cond_176693*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name176684:&"
 
_user_specified_name176682:&"
 
_user_specified_name176680:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
аE
Е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181486

inputs
states_0
states_11
split_readvariableop_resource:
ђђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         ђW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @Y
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         @_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         @_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         @_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @^
mul_4Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:         @^
mul_5Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:         @^
mul_6Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:         @^
mul_7Mulstates_0ones_like_1:output:0*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         @U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         @Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         @ю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_1:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ха
Й
%sequential_1_lstm_2_while_body_175406D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3C
?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0
{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0V
Csequential_1_lstm_2_while_lstm_cell_split_readvariableop_resource_0:	dђT
Esequential_1_lstm_2_while_lstm_cell_split_1_readvariableop_resource_0:	ђQ
=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0:
ђђ&
"sequential_1_lstm_2_while_identity(
$sequential_1_lstm_2_while_identity_1(
$sequential_1_lstm_2_while_identity_2(
$sequential_1_lstm_2_while_identity_3(
$sequential_1_lstm_2_while_identity_4(
$sequential_1_lstm_2_while_identity_5A
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1}
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensorT
Asequential_1_lstm_2_while_lstm_cell_split_readvariableop_resource:	dђR
Csequential_1_lstm_2_while_lstm_cell_split_1_readvariableop_resource:	ђO
;sequential_1_lstm_2_while_lstm_cell_readvariableop_resource:
ђђѕб2sequential_1/lstm_2/while/lstm_cell/ReadVariableOpб4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_1б4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_2б4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_3б8sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOpб:sequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOpю
Ksequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   і
=sequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_2_while_placeholderTsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0х
3sequential_1/lstm_2/while/lstm_cell/ones_like/ShapeShapeDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤x
3sequential_1/lstm_2/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?с
-sequential_1/lstm_2/while/lstm_cell/ones_likeFill<sequential_1/lstm_2/while/lstm_cell/ones_like/Shape:output:0<sequential_1/lstm_2/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dџ
5sequential_1/lstm_2/while/lstm_cell/ones_like_1/ShapeShape'sequential_1_lstm_2_while_placeholder_2*
T0*
_output_shapes
::ь¤z
5sequential_1/lstm_2/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ж
/sequential_1/lstm_2/while/lstm_cell/ones_like_1Fill>sequential_1/lstm_2/while/lstm_cell/ones_like_1/Shape:output:0>sequential_1/lstm_2/while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђя
'sequential_1/lstm_2/while/lstm_cell/mulMulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_2/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dЯ
)sequential_1/lstm_2/while/lstm_cell/mul_1MulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_2/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dЯ
)sequential_1/lstm_2/while/lstm_cell/mul_2MulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_2/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dЯ
)sequential_1/lstm_2/while/lstm_cell/mul_3MulDsequential_1/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_2/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         du
3sequential_1/lstm_2/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
8sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOpReadVariableOpCsequential_1_lstm_2_while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0ј
)sequential_1/lstm_2/while/lstm_cell/splitSplit<sequential_1/lstm_2/while/lstm_cell/split/split_dim:output:0@sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split╚
*sequential_1/lstm_2/while/lstm_cell/MatMulMatMul+sequential_1/lstm_2/while/lstm_cell/mul:z:02sequential_1/lstm_2/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ╠
,sequential_1/lstm_2/while/lstm_cell/MatMul_1MatMul-sequential_1/lstm_2/while/lstm_cell/mul_1:z:02sequential_1/lstm_2/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ╠
,sequential_1/lstm_2/while/lstm_cell/MatMul_2MatMul-sequential_1/lstm_2/while/lstm_cell/mul_2:z:02sequential_1/lstm_2/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ╠
,sequential_1/lstm_2/while/lstm_cell/MatMul_3MatMul-sequential_1/lstm_2/while/lstm_cell/mul_3:z:02sequential_1/lstm_2/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђw
5sequential_1/lstm_2/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : й
:sequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOpReadVariableOpEsequential_1_lstm_2_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0ё
+sequential_1/lstm_2/while/lstm_cell/split_1Split>sequential_1/lstm_2/while/lstm_cell/split_1/split_dim:output:0Bsequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitН
+sequential_1/lstm_2/while/lstm_cell/BiasAddBiasAdd4sequential_1/lstm_2/while/lstm_cell/MatMul:product:04sequential_1/lstm_2/while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђ┘
-sequential_1/lstm_2/while/lstm_cell/BiasAdd_1BiasAdd6sequential_1/lstm_2/while/lstm_cell/MatMul_1:product:04sequential_1/lstm_2/while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђ┘
-sequential_1/lstm_2/while/lstm_cell/BiasAdd_2BiasAdd6sequential_1/lstm_2/while/lstm_cell/MatMul_2:product:04sequential_1/lstm_2/while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђ┘
-sequential_1/lstm_2/while/lstm_cell/BiasAdd_3BiasAdd6sequential_1/lstm_2/while/lstm_cell/MatMul_3:product:04sequential_1/lstm_2/while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђк
)sequential_1/lstm_2/while/lstm_cell/mul_4Mul'sequential_1_lstm_2_while_placeholder_28sequential_1/lstm_2/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђк
)sequential_1/lstm_2/while/lstm_cell/mul_5Mul'sequential_1_lstm_2_while_placeholder_28sequential_1/lstm_2/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђк
)sequential_1/lstm_2/while/lstm_cell/mul_6Mul'sequential_1_lstm_2_while_placeholder_28sequential_1/lstm_2/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђк
)sequential_1/lstm_2/while/lstm_cell/mul_7Mul'sequential_1_lstm_2_while_placeholder_28sequential_1/lstm_2/while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђ▓
2sequential_1/lstm_2/while/lstm_cell/ReadVariableOpReadVariableOp=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0ѕ
7sequential_1/lstm_2/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9sequential_1/lstm_2/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   і
9sequential_1/lstm_2/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      А
1sequential_1/lstm_2/while/lstm_cell/strided_sliceStridedSlice:sequential_1/lstm_2/while/lstm_cell/ReadVariableOp:value:0@sequential_1/lstm_2/while/lstm_cell/strided_slice/stack:output:0Bsequential_1/lstm_2/while/lstm_cell/strided_slice/stack_1:output:0Bsequential_1/lstm_2/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskн
,sequential_1/lstm_2/while/lstm_cell/MatMul_4MatMul-sequential_1/lstm_2/while/lstm_cell/mul_4:z:0:sequential_1/lstm_2/while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЛ
'sequential_1/lstm_2/while/lstm_cell/addAddV24sequential_1/lstm_2/while/lstm_cell/BiasAdd:output:06sequential_1/lstm_2/while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђќ
+sequential_1/lstm_2/while/lstm_cell/SigmoidSigmoid+sequential_1/lstm_2/while/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ┤
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_1ReadVariableOp=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0і
9sequential_1/lstm_2/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ф
3sequential_1/lstm_2/while/lstm_cell/strided_slice_1StridedSlice<sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_1:value:0Bsequential_1/lstm_2/while/lstm_cell/strided_slice_1/stack:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_1/stack_1:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskо
,sequential_1/lstm_2/while/lstm_cell/MatMul_5MatMul-sequential_1/lstm_2/while/lstm_cell/mul_5:z:0<sequential_1/lstm_2/while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђН
)sequential_1/lstm_2/while/lstm_cell/add_1AddV26sequential_1/lstm_2/while/lstm_cell/BiasAdd_1:output:06sequential_1/lstm_2/while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђџ
-sequential_1/lstm_2/while/lstm_cell/Sigmoid_1Sigmoid-sequential_1/lstm_2/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђ┐
)sequential_1/lstm_2/while/lstm_cell/mul_8Mul1sequential_1/lstm_2/while/lstm_cell/Sigmoid_1:y:0'sequential_1_lstm_2_while_placeholder_3*
T0*(
_output_shapes
:         ђ┤
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_2ReadVariableOp=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0і
9sequential_1/lstm_2/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ф
3sequential_1/lstm_2/while/lstm_cell/strided_slice_2StridedSlice<sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_2:value:0Bsequential_1/lstm_2/while/lstm_cell/strided_slice_2/stack:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_2/stack_1:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskо
,sequential_1/lstm_2/while/lstm_cell/MatMul_6MatMul-sequential_1/lstm_2/while/lstm_cell/mul_6:z:0<sequential_1/lstm_2/while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђН
)sequential_1/lstm_2/while/lstm_cell/add_2AddV26sequential_1/lstm_2/while/lstm_cell/BiasAdd_2:output:06sequential_1/lstm_2/while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђњ
(sequential_1/lstm_2/while/lstm_cell/TanhTanh-sequential_1/lstm_2/while/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђ┬
)sequential_1/lstm_2/while/lstm_cell/mul_9Mul/sequential_1/lstm_2/while/lstm_cell/Sigmoid:y:0,sequential_1/lstm_2/while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђ├
)sequential_1/lstm_2/while/lstm_cell/add_3AddV2-sequential_1/lstm_2/while/lstm_cell/mul_8:z:0-sequential_1/lstm_2/while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ┤
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_3ReadVariableOp=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0і
9sequential_1/lstm_2/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ї
;sequential_1/lstm_2/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ф
3sequential_1/lstm_2/while/lstm_cell/strided_slice_3StridedSlice<sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_3:value:0Bsequential_1/lstm_2/while/lstm_cell/strided_slice_3/stack:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_3/stack_1:output:0Dsequential_1/lstm_2/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskо
,sequential_1/lstm_2/while/lstm_cell/MatMul_7MatMul-sequential_1/lstm_2/while/lstm_cell/mul_7:z:0<sequential_1/lstm_2/while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђН
)sequential_1/lstm_2/while/lstm_cell/add_4AddV26sequential_1/lstm_2/while/lstm_cell/BiasAdd_3:output:06sequential_1/lstm_2/while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђџ
-sequential_1/lstm_2/while/lstm_cell/Sigmoid_2Sigmoid-sequential_1/lstm_2/while/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђћ
*sequential_1/lstm_2/while/lstm_cell/Tanh_1Tanh-sequential_1/lstm_2/while/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђК
*sequential_1/lstm_2/while/lstm_cell/mul_10Mul1sequential_1/lstm_2/while/lstm_cell/Sigmoid_2:y:0.sequential_1/lstm_2/while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђЊ
>sequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_2_while_placeholder_1%sequential_1_lstm_2_while_placeholder.sequential_1/lstm_2/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмa
sequential_1/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ў
sequential_1/lstm_2/while/addAddV2%sequential_1_lstm_2_while_placeholder(sequential_1/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_1/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :и
sequential_1/lstm_2/while/add_1AddV2@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counter*sequential_1/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: Ћ
"sequential_1/lstm_2/while/IdentityIdentity#sequential_1/lstm_2/while/add_1:z:0^sequential_1/lstm_2/while/NoOp*
T0*
_output_shapes
: ║
$sequential_1/lstm_2/while/Identity_1IdentityFsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations^sequential_1/lstm_2/while/NoOp*
T0*
_output_shapes
: Ћ
$sequential_1/lstm_2/while/Identity_2Identity!sequential_1/lstm_2/while/add:z:0^sequential_1/lstm_2/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_1/lstm_2/while/Identity_3IdentityNsequential_1/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_1/lstm_2/while/NoOp*
T0*
_output_shapes
: ┤
$sequential_1/lstm_2/while/Identity_4Identity.sequential_1/lstm_2/while/lstm_cell/mul_10:z:0^sequential_1/lstm_2/while/NoOp*
T0*(
_output_shapes
:         ђ│
$sequential_1/lstm_2/while/Identity_5Identity-sequential_1/lstm_2/while/lstm_cell/add_3:z:0^sequential_1/lstm_2/while/NoOp*
T0*(
_output_shapes
:         ђј
sequential_1/lstm_2/while/NoOpNoOp3^sequential_1/lstm_2/while/lstm_cell/ReadVariableOp5^sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_15^sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_25^sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_39^sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOp;^sequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "U
$sequential_1_lstm_2_while_identity_1-sequential_1/lstm_2/while/Identity_1:output:0"U
$sequential_1_lstm_2_while_identity_2-sequential_1/lstm_2/while/Identity_2:output:0"U
$sequential_1_lstm_2_while_identity_3-sequential_1/lstm_2/while/Identity_3:output:0"U
$sequential_1_lstm_2_while_identity_4-sequential_1/lstm_2/while/Identity_4:output:0"U
$sequential_1_lstm_2_while_identity_5-sequential_1/lstm_2/while/Identity_5:output:0"Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0"|
;sequential_1_lstm_2_while_lstm_cell_readvariableop_resource=sequential_1_lstm_2_while_lstm_cell_readvariableop_resource_0"ї
Csequential_1_lstm_2_while_lstm_cell_split_1_readvariableop_resourceEsequential_1_lstm_2_while_lstm_cell_split_1_readvariableop_resource_0"ѕ
Asequential_1_lstm_2_while_lstm_cell_split_readvariableop_resourceCsequential_1_lstm_2_while_lstm_cell_split_readvariableop_resource_0"ђ
=sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1?sequential_1_lstm_2_while_sequential_1_lstm_2_strided_slice_1_0"Э
ysequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2l
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_14sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_12l
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_24sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_22l
4sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_34sequential_1/lstm_2/while/lstm_cell/ReadVariableOp_32h
2sequential_1/lstm_2/while/lstm_cell/ReadVariableOp2sequential_1/lstm_2/while/lstm_cell/ReadVariableOp2t
8sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOp8sequential_1/lstm_2/while/lstm_cell/split/ReadVariableOp2x
:sequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOp:sequential_1/lstm_2/while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:so

_output_shapes
: 
U
_user_specified_name=;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:[W

_output_shapes
: 
=
_user_specified_name%#sequential_1/lstm_2/strided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_1/lstm_2/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_1/lstm_2/while/loop_counter
к	
├
while_cond_178559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_178559___redundant_placeholder04
0while_while_cond_178559___redundant_placeholder14
0while_while_cond_178559___redundant_placeholder24
0while_while_cond_178559___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ђ╚
╬
B__inference_lstm_3_layer_call_and_return_conditional_losses_180032
inputs_0;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_179833*
condR
while_cond_179832*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
ђ─
ѓ	
while_body_179833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?А
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>О
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    н
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @ф
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к	
├
while_cond_177006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177006___redundant_placeholder04
0while_while_cond_177006___redundant_placeholder14
0while_while_cond_177006___redundant_placeholder24
0while_while_cond_177006___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Љ├
ѓ	
while_body_179174
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         db
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         d}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>о
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЕ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Р~
╠
B__inference_lstm_2_layer_call_and_return_conditional_losses_179615

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_179481*
condR
while_cond_179480*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d         ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         dђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         dђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
═E
Е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181224

inputs
states_0
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ+
readvariableop_resource:
ђђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         dW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ђ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ђ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ђ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ђS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ў
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ђm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ђm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ђm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ђ_
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ђ_
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ђ_
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ђ_
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:         ђh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ђe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ђN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ђi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ђX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ђj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ђi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ђJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ђV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ђi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ђL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ђ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ђю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_1:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┬	
├
while_cond_180141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180141___redundant_placeholder04
0while_while_cond_180141___redundant_placeholder14
0while_while_cond_180141___redundant_placeholder24
0while_while_cond_180141___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
В
Ћ
(__inference_dense_2_layer_call_fn_180904

inputs
unknown:@@
	unknown_0:@
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177603o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name180900:&"
 
_user_specified_name180898:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
а
╬
B__inference_lstm_2_layer_call_and_return_conditional_losses_179001
inputs_0:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dђ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_178867*
condR
while_cond_178866*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
еu
ѓ	
while_body_180142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @Б
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
■
и
'__inference_lstm_2_layer_call_fn_178365
inputs_0
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_176250}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178361:&"
 
_user_specified_name178359:&"
 
_user_specified_name178357:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
Ђ"
І
H__inference_sequential_1_layer_call_and_return_conditional_losses_178164
embedding_1_input%
embedding_1_177642:	љNd 
lstm_2_177888:	dђ
lstm_2_177890:	ђ!
lstm_2_177892:
ђђ!
lstm_3_178140:
ђђ
lstm_3_178142:	ђ 
lstm_3_178144:	@ђ 
dense_2_178147:@@
dense_2_178149:@ 
dense_3_178158:@
dense_3_178160:
identityѕбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallбlstm_2/StatefulPartitionedCallбlstm_3/StatefulPartitionedCallш
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_177642*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_176831ц
lstm_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0lstm_2_177888lstm_2_177890lstm_2_177892*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         dђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_177887џ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_178140lstm_3_178142lstm_3_178144*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_178139Ї
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_2_178147dense_2_178149*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177603▄
dropout_1/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_178156ѕ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3_178158dense_3_178160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_177632w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╬
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:&"
 
_user_specified_name178160:&
"
 
_user_specified_name178158:&	"
 
_user_specified_name178149:&"
 
_user_specified_name178147:&"
 
_user_specified_name178144:&"
 
_user_specified_name178142:&"
 
_user_specified_name178140:&"
 
_user_specified_name177892:&"
 
_user_specified_name177890:&"
 
_user_specified_name177888:&"
 
_user_specified_name177642:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
Љ├
ѓ	
while_body_178560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         db
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?а
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         d}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>о
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    М
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         dd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         d
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>▄
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         df
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђЂ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>П
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЕ
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dГ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђЉ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
С
и
'__inference_lstm_3_layer_call_fn_179637
inputs_0
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_176764o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name179633:&"
 
_user_specified_name179631:&"
 
_user_specified_name179629:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
ЅЃ
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175972

inputs

states
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ+
readvariableop_resource:
ђђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         dR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:         d]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђ_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ђ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ђ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ђ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ђS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ў
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ђm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ђm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ђm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ђd
mul_4Mulstatesdropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_5Mulstatesdropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_6Mulstatesdropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_7Mulstatesdropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ђe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ђN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ђi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ђX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ђj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ђi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ђJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ђV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ђi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ђL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ђ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ђю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:PL
(
_output_shapes
:         ђ
 
_user_specified_namestates:PL
(
_output_shapes
:         ђ
 
_user_specified_namestates:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
█
╬
B__inference_lstm_3_layer_call_and_return_conditional_losses_180277
inputs_0;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:                  ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_180142*
condR
while_cond_180141*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
В
Ћ
(__inference_dense_3_layer_call_fn_180951

inputs
unknown:@
	unknown_0:
identityѕбStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_177632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name180947:&"
 
_user_specified_name180945:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
С
и
'__inference_lstm_3_layer_call_fn_179626
inputs_0
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_176567o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name179622:&"
 
_user_specified_name179620:&"
 
_user_specified_name179618:_ [
5
_output_shapes#
!:                  ђ
"
_user_specified_name
inputs_0
═$
л
while_body_176181
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_176205_0:	dђ'
while_lstm_cell_176207_0:	ђ,
while_lstm_cell_176209_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_176205:	dђ%
while_lstm_cell_176207:	ђ*
while_lstm_cell_176209:
ђђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176205_0while_lstm_cell_176207_0while_lstm_cell_176209_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176167┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ј
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ђј
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ђR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_176205while_lstm_cell_176205_0"2
while_lstm_cell_176207while_lstm_cell_176207_0"2
while_lstm_cell_176209while_lstm_cell_176209_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name176209:&	"
 
_user_specified_name176207:&"
 
_user_specified_name176205:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╣А
Й
%sequential_1_lstm_3_while_body_175646D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3C
?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0
{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0W
Csequential_1_lstm_3_while_lstm_cell_split_readvariableop_resource_0:
ђђT
Esequential_1_lstm_3_while_lstm_cell_split_1_readvariableop_resource_0:	ђP
=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0:	@ђ&
"sequential_1_lstm_3_while_identity(
$sequential_1_lstm_3_while_identity_1(
$sequential_1_lstm_3_while_identity_2(
$sequential_1_lstm_3_while_identity_3(
$sequential_1_lstm_3_while_identity_4(
$sequential_1_lstm_3_while_identity_5A
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1}
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensorU
Asequential_1_lstm_3_while_lstm_cell_split_readvariableop_resource:
ђђR
Csequential_1_lstm_3_while_lstm_cell_split_1_readvariableop_resource:	ђN
;sequential_1_lstm_3_while_lstm_cell_readvariableop_resource:	@ђѕб2sequential_1/lstm_3/while/lstm_cell/ReadVariableOpб4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_1б4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_2б4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_3б8sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOpб:sequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOpю
Ksequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   І
=sequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0%sequential_1_lstm_3_while_placeholderTsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0х
3sequential_1/lstm_3/while/lstm_cell/ones_like/ShapeShapeDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤x
3sequential_1/lstm_3/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?С
-sequential_1/lstm_3/while/lstm_cell/ones_likeFill<sequential_1/lstm_3/while/lstm_cell/ones_like/Shape:output:0<sequential_1/lstm_3/while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђџ
5sequential_1/lstm_3/while/lstm_cell/ones_like_1/ShapeShape'sequential_1_lstm_3_while_placeholder_2*
T0*
_output_shapes
::ь¤z
5sequential_1/lstm_3/while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ж
/sequential_1/lstm_3/while/lstm_cell/ones_like_1Fill>sequential_1/lstm_3/while/lstm_cell/ones_like_1/Shape:output:0>sequential_1/lstm_3/while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @▀
'sequential_1/lstm_3/while/lstm_cell/mulMulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_3/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђр
)sequential_1/lstm_3/while/lstm_cell/mul_1MulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_3/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђр
)sequential_1/lstm_3/while/lstm_cell/mul_2MulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_3/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђр
)sequential_1/lstm_3/while/lstm_cell/mul_3MulDsequential_1/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:06sequential_1/lstm_3/while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђu
3sequential_1/lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Й
8sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOpReadVariableOpCsequential_1_lstm_3_while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0ј
)sequential_1/lstm_3/while/lstm_cell/splitSplit<sequential_1/lstm_3/while/lstm_cell/split/split_dim:output:0@sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitК
*sequential_1/lstm_3/while/lstm_cell/MatMulMatMul+sequential_1/lstm_3/while/lstm_cell/mul:z:02sequential_1/lstm_3/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @╦
,sequential_1/lstm_3/while/lstm_cell/MatMul_1MatMul-sequential_1/lstm_3/while/lstm_cell/mul_1:z:02sequential_1/lstm_3/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @╦
,sequential_1/lstm_3/while/lstm_cell/MatMul_2MatMul-sequential_1/lstm_3/while/lstm_cell/mul_2:z:02sequential_1/lstm_3/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @╦
,sequential_1/lstm_3/while/lstm_cell/MatMul_3MatMul-sequential_1/lstm_3/while/lstm_cell/mul_3:z:02sequential_1/lstm_3/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @w
5sequential_1/lstm_3/while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : й
:sequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOpReadVariableOpEsequential_1_lstm_3_while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0ђ
+sequential_1/lstm_3/while/lstm_cell/split_1Split>sequential_1/lstm_3/while/lstm_cell/split_1/split_dim:output:0Bsequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitн
+sequential_1/lstm_3/while/lstm_cell/BiasAddBiasAdd4sequential_1/lstm_3/while/lstm_cell/MatMul:product:04sequential_1/lstm_3/while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @п
-sequential_1/lstm_3/while/lstm_cell/BiasAdd_1BiasAdd6sequential_1/lstm_3/while/lstm_cell/MatMul_1:product:04sequential_1/lstm_3/while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @п
-sequential_1/lstm_3/while/lstm_cell/BiasAdd_2BiasAdd6sequential_1/lstm_3/while/lstm_cell/MatMul_2:product:04sequential_1/lstm_3/while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @п
-sequential_1/lstm_3/while/lstm_cell/BiasAdd_3BiasAdd6sequential_1/lstm_3/while/lstm_cell/MatMul_3:product:04sequential_1/lstm_3/while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @┼
)sequential_1/lstm_3/while/lstm_cell/mul_4Mul'sequential_1_lstm_3_while_placeholder_28sequential_1/lstm_3/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┼
)sequential_1/lstm_3/while/lstm_cell/mul_5Mul'sequential_1_lstm_3_while_placeholder_28sequential_1/lstm_3/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┼
)sequential_1/lstm_3/while/lstm_cell/mul_6Mul'sequential_1_lstm_3_while_placeholder_28sequential_1/lstm_3/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┼
)sequential_1/lstm_3/while/lstm_cell/mul_7Mul'sequential_1_lstm_3_while_placeholder_28sequential_1/lstm_3/while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @▒
2sequential_1/lstm_3/while/lstm_cell/ReadVariableOpReadVariableOp=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0ѕ
7sequential_1/lstm_3/while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        і
9sequential_1/lstm_3/while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   і
9sequential_1/lstm_3/while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
1sequential_1/lstm_3/while/lstm_cell/strided_sliceStridedSlice:sequential_1/lstm_3/while/lstm_cell/ReadVariableOp:value:0@sequential_1/lstm_3/while/lstm_cell/strided_slice/stack:output:0Bsequential_1/lstm_3/while/lstm_cell/strided_slice/stack_1:output:0Bsequential_1/lstm_3/while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskМ
,sequential_1/lstm_3/while/lstm_cell/MatMul_4MatMul-sequential_1/lstm_3/while/lstm_cell/mul_4:z:0:sequential_1/lstm_3/while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @л
'sequential_1/lstm_3/while/lstm_cell/addAddV24sequential_1/lstm_3/while/lstm_cell/BiasAdd:output:06sequential_1/lstm_3/while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Ћ
+sequential_1/lstm_3/while/lstm_cell/SigmoidSigmoid+sequential_1/lstm_3/while/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @│
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_1ReadVariableOp=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0і
9sequential_1/lstm_3/while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
3sequential_1/lstm_3/while/lstm_cell/strided_slice_1StridedSlice<sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_1:value:0Bsequential_1/lstm_3/while/lstm_cell/strided_slice_1/stack:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_1/stack_1:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskН
,sequential_1/lstm_3/while/lstm_cell/MatMul_5MatMul-sequential_1/lstm_3/while/lstm_cell/mul_5:z:0<sequential_1/lstm_3/while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @н
)sequential_1/lstm_3/while/lstm_cell/add_1AddV26sequential_1/lstm_3/while/lstm_cell/BiasAdd_1:output:06sequential_1/lstm_3/while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @Ў
-sequential_1/lstm_3/while/lstm_cell/Sigmoid_1Sigmoid-sequential_1/lstm_3/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @Й
)sequential_1/lstm_3/while/lstm_cell/mul_8Mul1sequential_1/lstm_3/while/lstm_cell/Sigmoid_1:y:0'sequential_1_lstm_3_while_placeholder_3*
T0*'
_output_shapes
:         @│
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_2ReadVariableOp=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0і
9sequential_1/lstm_3/while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
3sequential_1/lstm_3/while/lstm_cell/strided_slice_2StridedSlice<sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_2:value:0Bsequential_1/lstm_3/while/lstm_cell/strided_slice_2/stack:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_2/stack_1:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskН
,sequential_1/lstm_3/while/lstm_cell/MatMul_6MatMul-sequential_1/lstm_3/while/lstm_cell/mul_6:z:0<sequential_1/lstm_3/while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @н
)sequential_1/lstm_3/while/lstm_cell/add_2AddV26sequential_1/lstm_3/while/lstm_cell/BiasAdd_2:output:06sequential_1/lstm_3/while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @Љ
(sequential_1/lstm_3/while/lstm_cell/TanhTanh-sequential_1/lstm_3/while/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @┴
)sequential_1/lstm_3/while/lstm_cell/mul_9Mul/sequential_1/lstm_3/while/lstm_cell/Sigmoid:y:0,sequential_1/lstm_3/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @┬
)sequential_1/lstm_3/while/lstm_cell/add_3AddV2-sequential_1/lstm_3/while/lstm_cell/mul_8:z:0-sequential_1/lstm_3/while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @│
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_3ReadVariableOp=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0і
9sequential_1/lstm_3/while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        ї
;sequential_1/lstm_3/while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
3sequential_1/lstm_3/while/lstm_cell/strided_slice_3StridedSlice<sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_3:value:0Bsequential_1/lstm_3/while/lstm_cell/strided_slice_3/stack:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_3/stack_1:output:0Dsequential_1/lstm_3/while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskН
,sequential_1/lstm_3/while/lstm_cell/MatMul_7MatMul-sequential_1/lstm_3/while/lstm_cell/mul_7:z:0<sequential_1/lstm_3/while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @н
)sequential_1/lstm_3/while/lstm_cell/add_4AddV26sequential_1/lstm_3/while/lstm_cell/BiasAdd_3:output:06sequential_1/lstm_3/while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @Ў
-sequential_1/lstm_3/while/lstm_cell/Sigmoid_2Sigmoid-sequential_1/lstm_3/while/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @Њ
*sequential_1/lstm_3/while/lstm_cell/Tanh_1Tanh-sequential_1/lstm_3/while/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @к
*sequential_1/lstm_3/while/lstm_cell/mul_10Mul1sequential_1/lstm_3/while/lstm_cell/Sigmoid_2:y:0.sequential_1/lstm_3/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @є
Dsequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ╗
>sequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_1_lstm_3_while_placeholder_1Msequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0.sequential_1/lstm_3/while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмa
sequential_1/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ў
sequential_1/lstm_3/while/addAddV2%sequential_1_lstm_3_while_placeholder(sequential_1/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_1/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :и
sequential_1/lstm_3/while/add_1AddV2@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counter*sequential_1/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ћ
"sequential_1/lstm_3/while/IdentityIdentity#sequential_1/lstm_3/while/add_1:z:0^sequential_1/lstm_3/while/NoOp*
T0*
_output_shapes
: ║
$sequential_1/lstm_3/while/Identity_1IdentityFsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations^sequential_1/lstm_3/while/NoOp*
T0*
_output_shapes
: Ћ
$sequential_1/lstm_3/while/Identity_2Identity!sequential_1/lstm_3/while/add:z:0^sequential_1/lstm_3/while/NoOp*
T0*
_output_shapes
: ┬
$sequential_1/lstm_3/while/Identity_3IdentityNsequential_1/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_1/lstm_3/while/NoOp*
T0*
_output_shapes
: │
$sequential_1/lstm_3/while/Identity_4Identity.sequential_1/lstm_3/while/lstm_cell/mul_10:z:0^sequential_1/lstm_3/while/NoOp*
T0*'
_output_shapes
:         @▓
$sequential_1/lstm_3/while/Identity_5Identity-sequential_1/lstm_3/while/lstm_cell/add_3:z:0^sequential_1/lstm_3/while/NoOp*
T0*'
_output_shapes
:         @ј
sequential_1/lstm_3/while/NoOpNoOp3^sequential_1/lstm_3/while/lstm_cell/ReadVariableOp5^sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_15^sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_25^sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_39^sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOp;^sequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "U
$sequential_1_lstm_3_while_identity_1-sequential_1/lstm_3/while/Identity_1:output:0"U
$sequential_1_lstm_3_while_identity_2-sequential_1/lstm_3/while/Identity_2:output:0"U
$sequential_1_lstm_3_while_identity_3-sequential_1/lstm_3/while/Identity_3:output:0"U
$sequential_1_lstm_3_while_identity_4-sequential_1/lstm_3/while/Identity_4:output:0"U
$sequential_1_lstm_3_while_identity_5-sequential_1/lstm_3/while/Identity_5:output:0"Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0"|
;sequential_1_lstm_3_while_lstm_cell_readvariableop_resource=sequential_1_lstm_3_while_lstm_cell_readvariableop_resource_0"ї
Csequential_1_lstm_3_while_lstm_cell_split_1_readvariableop_resourceEsequential_1_lstm_3_while_lstm_cell_split_1_readvariableop_resource_0"ѕ
Asequential_1_lstm_3_while_lstm_cell_split_readvariableop_resourceCsequential_1_lstm_3_while_lstm_cell_split_readvariableop_resource_0"ђ
=sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1?sequential_1_lstm_3_while_sequential_1_lstm_3_strided_slice_1_0"Э
ysequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor{sequential_1_lstm_3_while_tensorarrayv2read_tensorlistgetitem_sequential_1_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2l
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_14sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_12l
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_24sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_22l
4sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_34sequential_1/lstm_3/while/lstm_cell/ReadVariableOp_32h
2sequential_1/lstm_3/while/lstm_cell/ReadVariableOp2sequential_1/lstm_3/while/lstm_cell/ReadVariableOp2t
8sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOp8sequential_1/lstm_3/while/lstm_cell/split/ReadVariableOp2x
:sequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOp:sequential_1/lstm_3/while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:so

_output_shapes
: 
U
_user_specified_name=;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor:[W

_output_shapes
: 
=
_user_specified_name%#sequential_1/lstm_3/strided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_1/lstm_3/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_1/lstm_3/while/loop_counter
»
М
%sequential_1_lstm_3_while_cond_175645D
@sequential_1_lstm_3_while_sequential_1_lstm_3_while_loop_counterJ
Fsequential_1_lstm_3_while_sequential_1_lstm_3_while_maximum_iterations)
%sequential_1_lstm_3_while_placeholder+
'sequential_1_lstm_3_while_placeholder_1+
'sequential_1_lstm_3_while_placeholder_2+
'sequential_1_lstm_3_while_placeholder_3F
Bsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1\
Xsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_175645___redundant_placeholder0\
Xsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_175645___redundant_placeholder1\
Xsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_175645___redundant_placeholder2\
Xsequential_1_lstm_3_while_sequential_1_lstm_3_while_cond_175645___redundant_placeholder3&
"sequential_1_lstm_3_while_identity
▓
sequential_1/lstm_3/while/LessLess%sequential_1_lstm_3_while_placeholderBsequential_1_lstm_3_while_less_sequential_1_lstm_3_strided_slice_1*
T0*
_output_shapes
: s
"sequential_1/lstm_3/while/IdentityIdentity"sequential_1/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_1_lstm_3_while_identity+sequential_1/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::[W

_output_shapes
: 
=
_user_specified_name%#sequential_1/lstm_3/strided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_1/lstm_3/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_1/lstm_3/while/loop_counter
ш
Ц
G__inference_embedding_1_layer_call_and_return_conditional_losses_178343

inputs*
embedding_lookup_178338:	љNd
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         d╗
embedding_lookupResourceGatherembedding_lookup_178338Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/178338*+
_output_shapes
:         dd*
dtype0v
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_output_shapes
:         ddu
IdentityIdentity"embedding_lookup/Identity:output:0^NoOp*
T0*+
_output_shapes
:         dd5
NoOpNoOp^embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 2$
embedding_lookupembedding_lookup:&"
 
_user_specified_name178338:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ІК
╠
B__inference_lstm_2_layer_call_and_return_conditional_losses_177205

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         d\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         dq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЁ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_177007*
condR
while_cond_177006*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d         ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         dђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         dђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
Е#
»
H__inference_sequential_1_layer_call_and_return_conditional_losses_177639
embedding_1_input%
embedding_1_176832:	љNd 
lstm_2_177206:	dђ
lstm_2_177208:	ђ!
lstm_2_177210:
ђђ!
lstm_3_177586:
ђђ
lstm_3_177588:	ђ 
lstm_3_177590:	@ђ 
dense_2_177604:@@
dense_2_177606:@ 
dense_3_177633:@
dense_3_177635:
identityѕбdense_2/StatefulPartitionedCallбdense_3/StatefulPartitionedCallб!dropout_1/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallбlstm_2/StatefulPartitionedCallбlstm_3/StatefulPartitionedCallш
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputembedding_1_176832*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_176831ц
lstm_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_1/StatefulPartitionedCall:output:0lstm_2_177206lstm_2_177208lstm_2_177210*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         dђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_177205џ
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_177586lstm_3_177588lstm_3_177590*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_177585Ї
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_2_177604dense_2_177606*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_177603В
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_177620љ
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3_177633dense_3_177635*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_177632w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Ы
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:&"
 
_user_specified_name177635:&
"
 
_user_specified_name177633:&	"
 
_user_specified_name177606:&"
 
_user_specified_name177604:&"
 
_user_specified_name177590:&"
 
_user_specified_name177588:&"
 
_user_specified_name177586:&"
 
_user_specified_name177210:&"
 
_user_specified_name177208:&"
 
_user_specified_name177206:&"
 
_user_specified_name176832:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
╣t
ѓ	
while_body_178867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђб
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
еu
ѓ	
while_body_178004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @Б
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ф

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_177620

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ѕ
Д
-__inference_sequential_1_layer_call_fn_178218
embedding_1_input
unknown:	љNd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:
ђђ
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	@ђ
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_178164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178214:&
"
 
_user_specified_name178212:&	"
 
_user_specified_name178210:&"
 
_user_specified_name178208:&"
 
_user_specified_name178206:&"
 
_user_specified_name178204:&"
 
_user_specified_name178202:&"
 
_user_specified_name178200:&"
 
_user_specified_name178198:&"
 
_user_specified_name178196:&"
 
_user_specified_name178194:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
═$
л
while_body_175986
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_176010_0:	dђ'
while_lstm_cell_176012_0:	ђ,
while_lstm_cell_176014_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_176010:	dђ%
while_lstm_cell_176012:	ђ*
while_lstm_cell_176014:
ђђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176010_0while_lstm_cell_176012_0while_lstm_cell_176014_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175972┘
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ј
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:         ђј
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:         ђR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_176010while_lstm_cell_176010_0"2
while_lstm_cell_176012while_lstm_cell_176012_0"2
while_lstm_cell_176014while_lstm_cell_176014_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name176014:&	"
 
_user_specified_name176012:&"
 
_user_specified_name176010:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╚»
Ї%
__inference__traced_save_181742
file_prefix@
-read_disablecopyonread_embedding_1_embeddings:	љNd9
'read_1_disablecopyonread_dense_2_kernel:@@3
%read_2_disablecopyonread_dense_2_bias:@9
'read_3_disablecopyonread_dense_3_kernel:@3
%read_4_disablecopyonread_dense_3_bias:C
0read_5_disablecopyonread_lstm_2_lstm_cell_kernel:	dђN
:read_6_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel:
ђђ=
.read_7_disablecopyonread_lstm_2_lstm_cell_bias:	ђD
0read_8_disablecopyonread_lstm_3_lstm_cell_kernel:
ђђM
:read_9_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel:	@ђ>
/read_10_disablecopyonread_lstm_3_lstm_cell_bias:	ђ-
#read_11_disablecopyonread_iteration:	 1
'read_12_disablecopyonread_learning_rate: J
7read_13_disablecopyonread_adam_m_embedding_1_embeddings:	љNdJ
7read_14_disablecopyonread_adam_v_embedding_1_embeddings:	љNdK
8read_15_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel:	dђK
8read_16_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel:	dђV
Bread_17_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel:
ђђV
Bread_18_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel:
ђђE
6read_19_disablecopyonread_adam_m_lstm_2_lstm_cell_bias:	ђE
6read_20_disablecopyonread_adam_v_lstm_2_lstm_cell_bias:	ђL
8read_21_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel:
ђђL
8read_22_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel:
ђђU
Bread_23_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel:	@ђU
Bread_24_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel:	@ђE
6read_25_disablecopyonread_adam_m_lstm_3_lstm_cell_bias:	ђE
6read_26_disablecopyonread_adam_v_lstm_3_lstm_cell_bias:	ђA
/read_27_disablecopyonread_adam_m_dense_2_kernel:@@A
/read_28_disablecopyonread_adam_v_dense_2_kernel:@@;
-read_29_disablecopyonread_adam_m_dense_2_bias:@;
-read_30_disablecopyonread_adam_v_dense_2_bias:@A
/read_31_disablecopyonread_adam_m_dense_3_kernel:@A
/read_32_disablecopyonread_adam_v_dense_3_kernel:@;
-read_33_disablecopyonread_adam_m_dense_3_bias:;
-read_34_disablecopyonread_adam_v_dense_3_bias:+
!read_35_disablecopyonread_total_1: +
!read_36_disablecopyonread_count_1: )
read_37_disablecopyonread_total: )
read_38_disablecopyonread_count: 
savev2_const
identity_79ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_10/DisableCopyOnReadбRead_10/ReadVariableOpбRead_11/DisableCopyOnReadбRead_11/ReadVariableOpбRead_12/DisableCopyOnReadбRead_12/ReadVariableOpбRead_13/DisableCopyOnReadбRead_13/ReadVariableOpбRead_14/DisableCopyOnReadбRead_14/ReadVariableOpбRead_15/DisableCopyOnReadбRead_15/ReadVariableOpбRead_16/DisableCopyOnReadбRead_16/ReadVariableOpбRead_17/DisableCopyOnReadбRead_17/ReadVariableOpбRead_18/DisableCopyOnReadбRead_18/ReadVariableOpбRead_19/DisableCopyOnReadбRead_19/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_20/DisableCopyOnReadбRead_20/ReadVariableOpбRead_21/DisableCopyOnReadбRead_21/ReadVariableOpбRead_22/DisableCopyOnReadбRead_22/ReadVariableOpбRead_23/DisableCopyOnReadбRead_23/ReadVariableOpбRead_24/DisableCopyOnReadбRead_24/ReadVariableOpбRead_25/DisableCopyOnReadбRead_25/ReadVariableOpбRead_26/DisableCopyOnReadбRead_26/ReadVariableOpбRead_27/DisableCopyOnReadбRead_27/ReadVariableOpбRead_28/DisableCopyOnReadбRead_28/ReadVariableOpбRead_29/DisableCopyOnReadбRead_29/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_30/DisableCopyOnReadбRead_30/ReadVariableOpбRead_31/DisableCopyOnReadбRead_31/ReadVariableOpбRead_32/DisableCopyOnReadбRead_32/ReadVariableOpбRead_33/DisableCopyOnReadбRead_33/ReadVariableOpбRead_34/DisableCopyOnReadбRead_34/ReadVariableOpбRead_35/DisableCopyOnReadбRead_35/ReadVariableOpбRead_36/DisableCopyOnReadбRead_36/ReadVariableOpбRead_37/DisableCopyOnReadбRead_37/ReadVariableOpбRead_38/DisableCopyOnReadбRead_38/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
Read/DisableCopyOnReadDisableCopyOnRead-read_disablecopyonread_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 ф
Read/ReadVariableOpReadVariableOp-read_disablecopyonread_embedding_1_embeddings^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	љNd*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	љNdb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	љNd{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 Д
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_dense_2_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0m

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@c

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes

:@@y
Read_2/DisableCopyOnReadDisableCopyOnRead%read_2_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 А
Read_2/ReadVariableOpReadVariableOp%read_2_disablecopyonread_dense_2_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 Д
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_dense_3_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:@y
Read_4/DisableCopyOnReadDisableCopyOnRead%read_4_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 А
Read_4/ReadVariableOpReadVariableOp%read_4_disablecopyonread_dense_3_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:ё
Read_5/DisableCopyOnReadDisableCopyOnRead0read_5_disablecopyonread_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_5/ReadVariableOpReadVariableOp0read_5_disablecopyonread_lstm_2_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dђ*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dђf
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	dђј
Read_6/DisableCopyOnReadDisableCopyOnRead:read_6_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_6/ReadVariableOpReadVariableOp:read_6_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђѓ
Read_7/DisableCopyOnReadDisableCopyOnRead.read_7_disablecopyonread_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ф
Read_7/ReadVariableOpReadVariableOp.read_7_disablecopyonread_lstm_2_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђё
Read_8/DisableCopyOnReadDisableCopyOnRead0read_8_disablecopyonread_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_8/ReadVariableOpReadVariableOp0read_8_disablecopyonread_lstm_3_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђј
Read_9/DisableCopyOnReadDisableCopyOnRead:read_9_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_9/ReadVariableOpReadVariableOp:read_9_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђё
Read_10/DisableCopyOnReadDisableCopyOnRead/read_10_disablecopyonread_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 «
Read_10/ReadVariableOpReadVariableOp/read_10_disablecopyonread_lstm_3_lstm_cell_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђx
Read_11/DisableCopyOnReadDisableCopyOnRead#read_11_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ю
Read_11/ReadVariableOpReadVariableOp#read_11_disablecopyonread_iteration^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_12/DisableCopyOnReadDisableCopyOnRead'read_12_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 А
Read_12/ReadVariableOpReadVariableOp'read_12_disablecopyonread_learning_rate^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: ї
Read_13/DisableCopyOnReadDisableCopyOnRead7read_13_disablecopyonread_adam_m_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 ║
Read_13/ReadVariableOpReadVariableOp7read_13_disablecopyonread_adam_m_embedding_1_embeddings^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	љNd*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	љNdf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	љNdї
Read_14/DisableCopyOnReadDisableCopyOnRead7read_14_disablecopyonread_adam_v_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 ║
Read_14/ReadVariableOpReadVariableOp7read_14_disablecopyonread_adam_v_embedding_1_embeddings^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	љNd*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	љNdf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	љNdЇ
Read_15/DisableCopyOnReadDisableCopyOnRead8read_15_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_15/ReadVariableOpReadVariableOp8read_15_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dђ*
dtype0p
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dђf
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	dђЇ
Read_16/DisableCopyOnReadDisableCopyOnRead8read_16_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_16/ReadVariableOpReadVariableOp8read_16_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dђ*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dђf
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	dђЌ
Read_17/DisableCopyOnReadDisableCopyOnReadBread_17_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 к
Read_17/ReadVariableOpReadVariableOpBread_17_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel^Read_17/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђЌ
Read_18/DisableCopyOnReadDisableCopyOnReadBread_18_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 к
Read_18/ReadVariableOpReadVariableOpBread_18_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђІ
Read_19/DisableCopyOnReadDisableCopyOnRead6read_19_disablecopyonread_adam_m_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_19/ReadVariableOpReadVariableOp6read_19_disablecopyonread_adam_m_lstm_2_lstm_cell_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_adam_v_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_adam_v_lstm_2_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђЇ
Read_21/DisableCopyOnReadDisableCopyOnRead8read_21_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_21/ReadVariableOpReadVariableOp8read_21_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel^Read_21/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђЇ
Read_22/DisableCopyOnReadDisableCopyOnRead8read_22_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_22/ReadVariableOpReadVariableOp8read_22_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ђђ*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђg
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ђђЌ
Read_23/DisableCopyOnReadDisableCopyOnReadBread_23_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┼
Read_23/ReadVariableOpReadVariableOpBread_23_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђf
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђЌ
Read_24/DisableCopyOnReadDisableCopyOnReadBread_24_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ┼
Read_24/ReadVariableOpReadVariableOpBread_24_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@ђ*
dtype0p
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@ђf
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:	@ђІ
Read_25/DisableCopyOnReadDisableCopyOnRead6read_25_disablecopyonread_adam_m_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_25/ReadVariableOpReadVariableOp6read_25_disablecopyonread_adam_m_lstm_3_lstm_cell_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђІ
Read_26/DisableCopyOnReadDisableCopyOnRead6read_26_disablecopyonread_adam_v_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 х
Read_26/ReadVariableOpReadVariableOp6read_26_disablecopyonread_adam_v_lstm_3_lstm_cell_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ђ*
dtype0l
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:ђb
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes	
:ђё
Read_27/DisableCopyOnReadDisableCopyOnRead/read_27_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_27/ReadVariableOpReadVariableOp/read_27_disablecopyonread_adam_m_dense_2_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

:@@ё
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_v_dense_2_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@@*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@@e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:@@ѓ
Read_29/DisableCopyOnReadDisableCopyOnRead-read_29_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 Ф
Read_29/ReadVariableOpReadVariableOp-read_29_disablecopyonread_adam_m_dense_2_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@ѓ
Read_30/DisableCopyOnReadDisableCopyOnRead-read_30_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 Ф
Read_30/ReadVariableOpReadVariableOp-read_30_disablecopyonread_adam_v_dense_2_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:@ё
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_adam_m_dense_3_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:@ё
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_v_dense_3_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:@ѓ
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 Ф
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_adam_m_dense_3_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:ѓ
Read_34/DisableCopyOnReadDisableCopyOnRead-read_34_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 Ф
Read_34/ReadVariableOpReadVariableOp-read_34_disablecopyonread_adam_v_dense_3_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_35/DisableCopyOnReadDisableCopyOnRead!read_35_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Џ
Read_35/ReadVariableOpReadVariableOp!read_35_disablecopyonread_total_1^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_36/DisableCopyOnReadDisableCopyOnRead!read_36_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Џ
Read_36/ReadVariableOpReadVariableOp!read_36_disablecopyonread_count_1^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_37/DisableCopyOnReadDisableCopyOnReadread_37_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Ў
Read_37/ReadVariableOpReadVariableOpread_37_disablecopyonread_total^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_38/DisableCopyOnReadDisableCopyOnReadread_38_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Ў
Read_38/ReadVariableOpReadVariableOpread_38_disablecopyonread_count^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: └
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*ж
value▀B▄(B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHй
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B н
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *6
dtypes,
*2(	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_78Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_79IdentityIdentity_78:output:0^NoOp*
T0*
_output_shapes
: ▓
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_79Identity_79:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=(9

_output_shapes
: 

_user_specified_nameConst:%'!

_user_specified_namecount:%&!

_user_specified_nametotal:'%#
!
_user_specified_name	count_1:'$#
!
_user_specified_name	total_1:3#/
-
_user_specified_nameAdam/v/dense_3/bias:3"/
-
_user_specified_nameAdam/m/dense_3/bias:5!1
/
_user_specified_nameAdam/v/dense_3/kernel:5 1
/
_user_specified_nameAdam/m/dense_3/kernel:3/
-
_user_specified_nameAdam/v/dense_2/bias:3/
-
_user_specified_nameAdam/m/dense_2/bias:51
/
_user_specified_nameAdam/v/dense_2/kernel:51
/
_user_specified_nameAdam/m/dense_2/kernel:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:<8
6
_user_specified_nameAdam/v/lstm_2/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_2/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/v/lstm_2/lstm_cell/kernel:>:
8
_user_specified_name Adam/m/lstm_2/lstm_cell/kernel:=9
7
_user_specified_nameAdam/v/embedding_1/embeddings:=9
7
_user_specified_nameAdam/m/embedding_1/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:51
/
_user_specified_namelstm_3/lstm_cell/bias:A
=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:7	3
1
_user_specified_namelstm_3/lstm_cell/kernel:51
/
_user_specified_namelstm_2/lstm_cell/bias:A=
;
_user_specified_name#!lstm_2/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_2/lstm_cell/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:62
0
_user_specified_nameembedding_1/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
еu
ѓ	
while_body_180760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @Б
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЦ
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┴Ы
Ь
!__inference__wrapped_model_175796
embedding_1_inputC
0sequential_1_embedding_1_embedding_lookup_175296:	љNdN
;sequential_1_lstm_2_lstm_cell_split_readvariableop_resource:	dђL
=sequential_1_lstm_2_lstm_cell_split_1_readvariableop_resource:	ђI
5sequential_1_lstm_2_lstm_cell_readvariableop_resource:
ђђO
;sequential_1_lstm_3_lstm_cell_split_readvariableop_resource:
ђђL
=sequential_1_lstm_3_lstm_cell_split_1_readvariableop_resource:	ђH
5sequential_1_lstm_3_lstm_cell_readvariableop_resource:	@ђE
3sequential_1_dense_2_matmul_readvariableop_resource:@@B
4sequential_1_dense_2_biasadd_readvariableop_resource:@E
3sequential_1_dense_3_matmul_readvariableop_resource:@B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identityѕб+sequential_1/dense_2/BiasAdd/ReadVariableOpб*sequential_1/dense_2/MatMul/ReadVariableOpб+sequential_1/dense_3/BiasAdd/ReadVariableOpб*sequential_1/dense_3/MatMul/ReadVariableOpб)sequential_1/embedding_1/embedding_lookupб,sequential_1/lstm_2/lstm_cell/ReadVariableOpб.sequential_1/lstm_2/lstm_cell/ReadVariableOp_1б.sequential_1/lstm_2/lstm_cell/ReadVariableOp_2б.sequential_1/lstm_2/lstm_cell/ReadVariableOp_3б2sequential_1/lstm_2/lstm_cell/split/ReadVariableOpб4sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOpбsequential_1/lstm_2/whileб,sequential_1/lstm_3/lstm_cell/ReadVariableOpб.sequential_1/lstm_3/lstm_cell/ReadVariableOp_1б.sequential_1/lstm_3/lstm_cell/ReadVariableOp_2б.sequential_1/lstm_3/lstm_cell/ReadVariableOp_3б2sequential_1/lstm_3/lstm_cell/split/ReadVariableOpб4sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOpбsequential_1/lstm_3/whiley
sequential_1/embedding_1/CastCastembedding_1_input*

DstT0*

SrcT0*'
_output_shapes
:         dЪ
)sequential_1/embedding_1/embedding_lookupResourceGather0sequential_1_embedding_1_embedding_lookup_175296!sequential_1/embedding_1/Cast:y:0*
Tindices0*C
_class9
75loc:@sequential_1/embedding_1/embedding_lookup/175296*+
_output_shapes
:         dd*
dtype0е
2sequential_1/embedding_1/embedding_lookup/IdentityIdentity2sequential_1/embedding_1/embedding_lookup:output:0*
T0*+
_output_shapes
:         ddњ
sequential_1/lstm_2/ShapeShape;sequential_1/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
::ь¤q
'sequential_1/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_1/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_1/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
!sequential_1/lstm_2/strided_sliceStridedSlice"sequential_1/lstm_2/Shape:output:00sequential_1/lstm_2/strided_slice/stack:output:02sequential_1/lstm_2/strided_slice/stack_1:output:02sequential_1/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential_1/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ»
 sequential_1/lstm_2/zeros/packedPack*sequential_1/lstm_2/strided_slice:output:0+sequential_1/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_1/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
sequential_1/lstm_2/zerosFill)sequential_1/lstm_2/zeros/packed:output:0(sequential_1/lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:         ђg
$sequential_1/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ│
"sequential_1/lstm_2/zeros_1/packedPack*sequential_1/lstm_2/strided_slice:output:0-sequential_1/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_1/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    »
sequential_1/lstm_2/zeros_1Fill+sequential_1/lstm_2/zeros_1/packed:output:0*sequential_1/lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђw
"sequential_1/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╩
sequential_1/lstm_2/transpose	Transpose;sequential_1/embedding_1/embedding_lookup/Identity:output:0+sequential_1/lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:d         dz
sequential_1/lstm_2/Shape_1Shape!sequential_1/lstm_2/transpose:y:0*
T0*
_output_shapes
::ь¤s
)sequential_1/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_1/lstm_2/strided_slice_1StridedSlice$sequential_1/lstm_2/Shape_1:output:02sequential_1/lstm_2/strided_slice_1/stack:output:04sequential_1/lstm_2/strided_slice_1/stack_1:output:04sequential_1/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_1/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ­
!sequential_1/lstm_2/TensorArrayV2TensorListReserve8sequential_1/lstm_2/TensorArrayV2/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмџ
Isequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ю
;sequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_2/transpose:y:0Rsequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмs
)sequential_1/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:═
#sequential_1/lstm_2/strided_slice_2StridedSlice!sequential_1/lstm_2/transpose:y:02sequential_1/lstm_2/strided_slice_2/stack:output:04sequential_1/lstm_2/strided_slice_2/stack_1:output:04sequential_1/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskЌ
-sequential_1/lstm_2/lstm_cell/ones_like/ShapeShape,sequential_1/lstm_2/strided_slice_2:output:0*
T0*
_output_shapes
::ь¤r
-sequential_1/lstm_2/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Л
'sequential_1/lstm_2/lstm_cell/ones_likeFill6sequential_1/lstm_2/lstm_cell/ones_like/Shape:output:06sequential_1/lstm_2/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dЈ
/sequential_1/lstm_2/lstm_cell/ones_like_1/ShapeShape"sequential_1/lstm_2/zeros:output:0*
T0*
_output_shapes
::ь¤t
/sequential_1/lstm_2/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?п
)sequential_1/lstm_2/lstm_cell/ones_like_1Fill8sequential_1/lstm_2/lstm_cell/ones_like_1/Shape:output:08sequential_1/lstm_2/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ║
!sequential_1/lstm_2/lstm_cell/mulMul,sequential_1/lstm_2/strided_slice_2:output:00sequential_1/lstm_2/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d╝
#sequential_1/lstm_2/lstm_cell/mul_1Mul,sequential_1/lstm_2/strided_slice_2:output:00sequential_1/lstm_2/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d╝
#sequential_1/lstm_2/lstm_cell/mul_2Mul,sequential_1/lstm_2/strided_slice_2:output:00sequential_1/lstm_2/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         d╝
#sequential_1/lstm_2/lstm_cell/mul_3Mul,sequential_1/lstm_2/strided_slice_2:output:00sequential_1/lstm_2/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         do
-sequential_1/lstm_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :»
2sequential_1/lstm_2/lstm_cell/split/ReadVariableOpReadVariableOp;sequential_1_lstm_2_lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0Ч
#sequential_1/lstm_2/lstm_cell/splitSplit6sequential_1/lstm_2/lstm_cell/split/split_dim:output:0:sequential_1/lstm_2/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitХ
$sequential_1/lstm_2/lstm_cell/MatMulMatMul%sequential_1/lstm_2/lstm_cell/mul:z:0,sequential_1/lstm_2/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ║
&sequential_1/lstm_2/lstm_cell/MatMul_1MatMul'sequential_1/lstm_2/lstm_cell/mul_1:z:0,sequential_1/lstm_2/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ║
&sequential_1/lstm_2/lstm_cell/MatMul_2MatMul'sequential_1/lstm_2/lstm_cell/mul_2:z:0,sequential_1/lstm_2/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ║
&sequential_1/lstm_2/lstm_cell/MatMul_3MatMul'sequential_1/lstm_2/lstm_cell/mul_3:z:0,sequential_1/lstm_2/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђq
/sequential_1/lstm_2/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : »
4sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOpReadVariableOp=sequential_1_lstm_2_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ы
%sequential_1/lstm_2/lstm_cell/split_1Split8sequential_1/lstm_2/lstm_cell/split_1/split_dim:output:0<sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_split├
%sequential_1/lstm_2/lstm_cell/BiasAddBiasAdd.sequential_1/lstm_2/lstm_cell/MatMul:product:0.sequential_1/lstm_2/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђК
'sequential_1/lstm_2/lstm_cell/BiasAdd_1BiasAdd0sequential_1/lstm_2/lstm_cell/MatMul_1:product:0.sequential_1/lstm_2/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђК
'sequential_1/lstm_2/lstm_cell/BiasAdd_2BiasAdd0sequential_1/lstm_2/lstm_cell/MatMul_2:product:0.sequential_1/lstm_2/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђК
'sequential_1/lstm_2/lstm_cell/BiasAdd_3BiasAdd0sequential_1/lstm_2/lstm_cell/MatMul_3:product:0.sequential_1/lstm_2/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђх
#sequential_1/lstm_2/lstm_cell/mul_4Mul"sequential_1/lstm_2/zeros:output:02sequential_1/lstm_2/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђх
#sequential_1/lstm_2/lstm_cell/mul_5Mul"sequential_1/lstm_2/zeros:output:02sequential_1/lstm_2/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђх
#sequential_1/lstm_2/lstm_cell/mul_6Mul"sequential_1/lstm_2/zeros:output:02sequential_1/lstm_2/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђх
#sequential_1/lstm_2/lstm_cell/mul_7Mul"sequential_1/lstm_2/zeros:output:02sequential_1/lstm_2/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђц
,sequential_1/lstm_2/lstm_cell/ReadVariableOpReadVariableOp5sequential_1_lstm_2_lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ѓ
1sequential_1/lstm_2/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ё
3sequential_1/lstm_2/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   ё
3sequential_1/lstm_2/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
+sequential_1/lstm_2/lstm_cell/strided_sliceStridedSlice4sequential_1/lstm_2/lstm_cell/ReadVariableOp:value:0:sequential_1/lstm_2/lstm_cell/strided_slice/stack:output:0<sequential_1/lstm_2/lstm_cell/strided_slice/stack_1:output:0<sequential_1/lstm_2/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_mask┬
&sequential_1/lstm_2/lstm_cell/MatMul_4MatMul'sequential_1/lstm_2/lstm_cell/mul_4:z:04sequential_1/lstm_2/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђ┐
!sequential_1/lstm_2/lstm_cell/addAddV2.sequential_1/lstm_2/lstm_cell/BiasAdd:output:00sequential_1/lstm_2/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђі
%sequential_1/lstm_2/lstm_cell/SigmoidSigmoid%sequential_1/lstm_2/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђд
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_1ReadVariableOp5sequential_1_lstm_2_lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ё
3sequential_1/lstm_2/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   є
5sequential_1/lstm_2/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       є
5sequential_1/lstm_2/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
-sequential_1/lstm_2/lstm_cell/strided_slice_1StridedSlice6sequential_1/lstm_2/lstm_cell/ReadVariableOp_1:value:0<sequential_1/lstm_2/lstm_cell/strided_slice_1/stack:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_1/stack_1:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_mask─
&sequential_1/lstm_2/lstm_cell/MatMul_5MatMul'sequential_1/lstm_2/lstm_cell/mul_5:z:06sequential_1/lstm_2/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђ├
#sequential_1/lstm_2/lstm_cell/add_1AddV20sequential_1/lstm_2/lstm_cell/BiasAdd_1:output:00sequential_1/lstm_2/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђј
'sequential_1/lstm_2/lstm_cell/Sigmoid_1Sigmoid'sequential_1/lstm_2/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђ░
#sequential_1/lstm_2/lstm_cell/mul_8Mul+sequential_1/lstm_2/lstm_cell/Sigmoid_1:y:0$sequential_1/lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:         ђд
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_2ReadVariableOp5sequential_1_lstm_2_lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ё
3sequential_1/lstm_2/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       є
5sequential_1/lstm_2/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  є
5sequential_1/lstm_2/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
-sequential_1/lstm_2/lstm_cell/strided_slice_2StridedSlice6sequential_1/lstm_2/lstm_cell/ReadVariableOp_2:value:0<sequential_1/lstm_2/lstm_cell/strided_slice_2/stack:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_2/stack_1:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_mask─
&sequential_1/lstm_2/lstm_cell/MatMul_6MatMul'sequential_1/lstm_2/lstm_cell/mul_6:z:06sequential_1/lstm_2/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђ├
#sequential_1/lstm_2/lstm_cell/add_2AddV20sequential_1/lstm_2/lstm_cell/BiasAdd_2:output:00sequential_1/lstm_2/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђє
"sequential_1/lstm_2/lstm_cell/TanhTanh'sequential_1/lstm_2/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђ░
#sequential_1/lstm_2/lstm_cell/mul_9Mul)sequential_1/lstm_2/lstm_cell/Sigmoid:y:0&sequential_1/lstm_2/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђ▒
#sequential_1/lstm_2/lstm_cell/add_3AddV2'sequential_1/lstm_2/lstm_cell/mul_8:z:0'sequential_1/lstm_2/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђд
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_3ReadVariableOp5sequential_1_lstm_2_lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0ё
3sequential_1/lstm_2/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  є
5sequential_1/lstm_2/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        є
5sequential_1/lstm_2/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ї
-sequential_1/lstm_2/lstm_cell/strided_slice_3StridedSlice6sequential_1/lstm_2/lstm_cell/ReadVariableOp_3:value:0<sequential_1/lstm_2/lstm_cell/strided_slice_3/stack:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_3/stack_1:output:0>sequential_1/lstm_2/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_mask─
&sequential_1/lstm_2/lstm_cell/MatMul_7MatMul'sequential_1/lstm_2/lstm_cell/mul_7:z:06sequential_1/lstm_2/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђ├
#sequential_1/lstm_2/lstm_cell/add_4AddV20sequential_1/lstm_2/lstm_cell/BiasAdd_3:output:00sequential_1/lstm_2/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђј
'sequential_1/lstm_2/lstm_cell/Sigmoid_2Sigmoid'sequential_1/lstm_2/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђѕ
$sequential_1/lstm_2/lstm_cell/Tanh_1Tanh'sequential_1/lstm_2/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђх
$sequential_1/lstm_2/lstm_cell/mul_10Mul+sequential_1/lstm_2/lstm_cell/Sigmoid_2:y:0(sequential_1/lstm_2/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђѓ
1sequential_1/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   З
#sequential_1/lstm_2/TensorArrayV2_1TensorListReserve:sequential_1/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_1/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмZ
sequential_1/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_1/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_1/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ь
sequential_1/lstm_2/whileWhile/sequential_1/lstm_2/while/loop_counter:output:05sequential_1/lstm_2/while/maximum_iterations:output:0!sequential_1/lstm_2/time:output:0,sequential_1/lstm_2/TensorArrayV2_1:handle:0"sequential_1/lstm_2/zeros:output:0$sequential_1/lstm_2/zeros_1:output:0,sequential_1/lstm_2/strided_slice_1:output:0Ksequential_1/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_1_lstm_2_lstm_cell_split_readvariableop_resource=sequential_1_lstm_2_lstm_cell_split_1_readvariableop_resource5sequential_1_lstm_2_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_2_while_body_175406*1
cond)R'
%sequential_1_lstm_2_while_cond_175405*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ћ
Dsequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ    
6sequential_1/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_2/while:output:3Msequential_1/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d         ђ*
element_dtype0|
)sequential_1/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_1/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:В
#sequential_1/lstm_2/strided_slice_3StridedSlice?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_2/strided_slice_3/stack:output:04sequential_1/lstm_2/strided_slice_3/stack_1:output:04sequential_1/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masky
$sequential_1/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          М
sequential_1/lstm_2/transpose_1	Transpose?sequential_1/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:         dђo
sequential_1/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    z
sequential_1/lstm_3/ShapeShape#sequential_1/lstm_2/transpose_1:y:0*
T0*
_output_shapes
::ь¤q
'sequential_1/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_1/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_1/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
!sequential_1/lstm_3/strided_sliceStridedSlice"sequential_1/lstm_3/Shape:output:00sequential_1/lstm_3/strided_slice/stack:output:02sequential_1/lstm_3/strided_slice/stack_1:output:02sequential_1/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_1/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@»
 sequential_1/lstm_3/zeros/packedPack*sequential_1/lstm_3/strided_slice:output:0+sequential_1/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_1/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    е
sequential_1/lstm_3/zerosFill)sequential_1/lstm_3/zeros/packed:output:0(sequential_1/lstm_3/zeros/Const:output:0*
T0*'
_output_shapes
:         @f
$sequential_1/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@│
"sequential_1/lstm_3/zeros_1/packedPack*sequential_1/lstm_3/strided_slice:output:0-sequential_1/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_1/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    «
sequential_1/lstm_3/zeros_1Fill+sequential_1/lstm_3/zeros_1/packed:output:0*sequential_1/lstm_3/zeros_1/Const:output:0*
T0*'
_output_shapes
:         @w
"sequential_1/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          │
sequential_1/lstm_3/transpose	Transpose#sequential_1/lstm_2/transpose_1:y:0+sequential_1/lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:d         ђz
sequential_1/lstm_3/Shape_1Shape!sequential_1/lstm_3/transpose:y:0*
T0*
_output_shapes
::ь¤s
)sequential_1/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_1/lstm_3/strided_slice_1StridedSlice$sequential_1/lstm_3/Shape_1:output:02sequential_1/lstm_3/strided_slice_1/stack:output:04sequential_1/lstm_3/strided_slice_1/stack_1:output:04sequential_1/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_1/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ­
!sequential_1/lstm_3/TensorArrayV2TensorListReserve8sequential_1/lstm_3/TensorArrayV2/element_shape:output:0,sequential_1/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмџ
Isequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ю
;sequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_1/lstm_3/transpose:y:0Rsequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмs
)sequential_1/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_1/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╬
#sequential_1/lstm_3/strided_slice_2StridedSlice!sequential_1/lstm_3/transpose:y:02sequential_1/lstm_3/strided_slice_2/stack:output:04sequential_1/lstm_3/strided_slice_2/stack_1:output:04sequential_1/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maskЌ
-sequential_1/lstm_3/lstm_cell/ones_like/ShapeShape,sequential_1/lstm_3/strided_slice_2:output:0*
T0*
_output_shapes
::ь¤r
-sequential_1/lstm_3/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?м
'sequential_1/lstm_3/lstm_cell/ones_likeFill6sequential_1/lstm_3/lstm_cell/ones_like/Shape:output:06sequential_1/lstm_3/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђЈ
/sequential_1/lstm_3/lstm_cell/ones_like_1/ShapeShape"sequential_1/lstm_3/zeros:output:0*
T0*
_output_shapes
::ь¤t
/sequential_1/lstm_3/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?О
)sequential_1/lstm_3/lstm_cell/ones_like_1Fill8sequential_1/lstm_3/lstm_cell/ones_like_1/Shape:output:08sequential_1/lstm_3/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @╗
!sequential_1/lstm_3/lstm_cell/mulMul,sequential_1/lstm_3/strided_slice_2:output:00sequential_1/lstm_3/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђй
#sequential_1/lstm_3/lstm_cell/mul_1Mul,sequential_1/lstm_3/strided_slice_2:output:00sequential_1/lstm_3/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђй
#sequential_1/lstm_3/lstm_cell/mul_2Mul,sequential_1/lstm_3/strided_slice_2:output:00sequential_1/lstm_3/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђй
#sequential_1/lstm_3/lstm_cell/mul_3Mul,sequential_1/lstm_3/strided_slice_2:output:00sequential_1/lstm_3/lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђo
-sequential_1/lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :░
2sequential_1/lstm_3/lstm_cell/split/ReadVariableOpReadVariableOp;sequential_1_lstm_3_lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0Ч
#sequential_1/lstm_3/lstm_cell/splitSplit6sequential_1/lstm_3/lstm_cell/split/split_dim:output:0:sequential_1/lstm_3/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitх
$sequential_1/lstm_3/lstm_cell/MatMulMatMul%sequential_1/lstm_3/lstm_cell/mul:z:0,sequential_1/lstm_3/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @╣
&sequential_1/lstm_3/lstm_cell/MatMul_1MatMul'sequential_1/lstm_3/lstm_cell/mul_1:z:0,sequential_1/lstm_3/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @╣
&sequential_1/lstm_3/lstm_cell/MatMul_2MatMul'sequential_1/lstm_3/lstm_cell/mul_2:z:0,sequential_1/lstm_3/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @╣
&sequential_1/lstm_3/lstm_cell/MatMul_3MatMul'sequential_1/lstm_3/lstm_cell/mul_3:z:0,sequential_1/lstm_3/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @q
/sequential_1/lstm_3/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : »
4sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOpReadVariableOp=sequential_1_lstm_3_lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Ь
%sequential_1/lstm_3/lstm_cell/split_1Split8sequential_1/lstm_3/lstm_cell/split_1/split_dim:output:0<sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split┬
%sequential_1/lstm_3/lstm_cell/BiasAddBiasAdd.sequential_1/lstm_3/lstm_cell/MatMul:product:0.sequential_1/lstm_3/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @к
'sequential_1/lstm_3/lstm_cell/BiasAdd_1BiasAdd0sequential_1/lstm_3/lstm_cell/MatMul_1:product:0.sequential_1/lstm_3/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @к
'sequential_1/lstm_3/lstm_cell/BiasAdd_2BiasAdd0sequential_1/lstm_3/lstm_cell/MatMul_2:product:0.sequential_1/lstm_3/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @к
'sequential_1/lstm_3/lstm_cell/BiasAdd_3BiasAdd0sequential_1/lstm_3/lstm_cell/MatMul_3:product:0.sequential_1/lstm_3/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @┤
#sequential_1/lstm_3/lstm_cell/mul_4Mul"sequential_1/lstm_3/zeros:output:02sequential_1/lstm_3/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┤
#sequential_1/lstm_3/lstm_cell/mul_5Mul"sequential_1/lstm_3/zeros:output:02sequential_1/lstm_3/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┤
#sequential_1/lstm_3/lstm_cell/mul_6Mul"sequential_1/lstm_3/zeros:output:02sequential_1/lstm_3/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @┤
#sequential_1/lstm_3/lstm_cell/mul_7Mul"sequential_1/lstm_3/zeros:output:02sequential_1/lstm_3/lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @Б
,sequential_1/lstm_3/lstm_cell/ReadVariableOpReadVariableOp5sequential_1_lstm_3_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ѓ
1sequential_1/lstm_3/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ё
3sequential_1/lstm_3/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   ё
3sequential_1/lstm_3/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
+sequential_1/lstm_3/lstm_cell/strided_sliceStridedSlice4sequential_1/lstm_3/lstm_cell/ReadVariableOp:value:0:sequential_1/lstm_3/lstm_cell/strided_slice/stack:output:0<sequential_1/lstm_3/lstm_cell/strided_slice/stack_1:output:0<sequential_1/lstm_3/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask┴
&sequential_1/lstm_3/lstm_cell/MatMul_4MatMul'sequential_1/lstm_3/lstm_cell/mul_4:z:04sequential_1/lstm_3/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @Й
!sequential_1/lstm_3/lstm_cell/addAddV2.sequential_1/lstm_3/lstm_cell/BiasAdd:output:00sequential_1/lstm_3/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @Ѕ
%sequential_1/lstm_3/lstm_cell/SigmoidSigmoid%sequential_1/lstm_3/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @Ц
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_1ReadVariableOp5sequential_1_lstm_3_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ё
3sequential_1/lstm_3/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   є
5sequential_1/lstm_3/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   є
5sequential_1/lstm_3/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
-sequential_1/lstm_3/lstm_cell/strided_slice_1StridedSlice6sequential_1/lstm_3/lstm_cell/ReadVariableOp_1:value:0<sequential_1/lstm_3/lstm_cell/strided_slice_1/stack:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_1/stack_1:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
&sequential_1/lstm_3/lstm_cell/MatMul_5MatMul'sequential_1/lstm_3/lstm_cell/mul_5:z:06sequential_1/lstm_3/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @┬
#sequential_1/lstm_3/lstm_cell/add_1AddV20sequential_1/lstm_3/lstm_cell/BiasAdd_1:output:00sequential_1/lstm_3/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @Ї
'sequential_1/lstm_3/lstm_cell/Sigmoid_1Sigmoid'sequential_1/lstm_3/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @»
#sequential_1/lstm_3/lstm_cell/mul_8Mul+sequential_1/lstm_3/lstm_cell/Sigmoid_1:y:0$sequential_1/lstm_3/zeros_1:output:0*
T0*'
_output_shapes
:         @Ц
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_2ReadVariableOp5sequential_1_lstm_3_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ё
3sequential_1/lstm_3/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   є
5sequential_1/lstm_3/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   є
5sequential_1/lstm_3/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
-sequential_1/lstm_3/lstm_cell/strided_slice_2StridedSlice6sequential_1/lstm_3/lstm_cell/ReadVariableOp_2:value:0<sequential_1/lstm_3/lstm_cell/strided_slice_2/stack:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_2/stack_1:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
&sequential_1/lstm_3/lstm_cell/MatMul_6MatMul'sequential_1/lstm_3/lstm_cell/mul_6:z:06sequential_1/lstm_3/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @┬
#sequential_1/lstm_3/lstm_cell/add_2AddV20sequential_1/lstm_3/lstm_cell/BiasAdd_2:output:00sequential_1/lstm_3/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @Ё
"sequential_1/lstm_3/lstm_cell/TanhTanh'sequential_1/lstm_3/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @»
#sequential_1/lstm_3/lstm_cell/mul_9Mul)sequential_1/lstm_3/lstm_cell/Sigmoid:y:0&sequential_1/lstm_3/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @░
#sequential_1/lstm_3/lstm_cell/add_3AddV2'sequential_1/lstm_3/lstm_cell/mul_8:z:0'sequential_1/lstm_3/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @Ц
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_3ReadVariableOp5sequential_1_lstm_3_lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0ё
3sequential_1/lstm_3/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   є
5sequential_1/lstm_3/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        є
5sequential_1/lstm_3/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      І
-sequential_1/lstm_3/lstm_cell/strided_slice_3StridedSlice6sequential_1/lstm_3/lstm_cell/ReadVariableOp_3:value:0<sequential_1/lstm_3/lstm_cell/strided_slice_3/stack:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_3/stack_1:output:0>sequential_1/lstm_3/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask├
&sequential_1/lstm_3/lstm_cell/MatMul_7MatMul'sequential_1/lstm_3/lstm_cell/mul_7:z:06sequential_1/lstm_3/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @┬
#sequential_1/lstm_3/lstm_cell/add_4AddV20sequential_1/lstm_3/lstm_cell/BiasAdd_3:output:00sequential_1/lstm_3/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @Ї
'sequential_1/lstm_3/lstm_cell/Sigmoid_2Sigmoid'sequential_1/lstm_3/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @Є
$sequential_1/lstm_3/lstm_cell/Tanh_1Tanh'sequential_1/lstm_3/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @┤
$sequential_1/lstm_3/lstm_cell/mul_10Mul+sequential_1/lstm_3/lstm_cell/Sigmoid_2:y:0(sequential_1/lstm_3/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @ѓ
1sequential_1/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   r
0sequential_1/lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ђ
#sequential_1/lstm_3/TensorArrayV2_1TensorListReserve:sequential_1/lstm_3/TensorArrayV2_1/element_shape:output:09sequential_1/lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмZ
sequential_1/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_1/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         h
&sequential_1/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ж
sequential_1/lstm_3/whileWhile/sequential_1/lstm_3/while/loop_counter:output:05sequential_1/lstm_3/while/maximum_iterations:output:0!sequential_1/lstm_3/time:output:0,sequential_1/lstm_3/TensorArrayV2_1:handle:0"sequential_1/lstm_3/zeros:output:0$sequential_1/lstm_3/zeros_1:output:0,sequential_1/lstm_3/strided_slice_1:output:0Ksequential_1/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0;sequential_1_lstm_3_lstm_cell_split_readvariableop_resource=sequential_1_lstm_3_lstm_cell_split_1_readvariableop_resource5sequential_1_lstm_3_lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_1_lstm_3_while_body_175646*1
cond)R'
%sequential_1_lstm_3_while_cond_175645*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ћ
Dsequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   њ
6sequential_1/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_1/lstm_3/while:output:3Msequential_1/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elements|
)sequential_1/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         u
+sequential_1/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_1/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
#sequential_1/lstm_3/strided_slice_3StridedSlice?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:02sequential_1/lstm_3/strided_slice_3/stack:output:04sequential_1/lstm_3/strided_slice_3/stack_1:output:04sequential_1/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_masky
$sequential_1/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          м
sequential_1/lstm_3/transpose_1	Transpose?sequential_1/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_1/lstm_3/transpose_1/perm:output:0*
T0*+
_output_shapes
:         @o
sequential_1/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ъ
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0╣
sequential_1/dense_2/MatMulMatMul,sequential_1/lstm_3/strided_slice_3:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @ю
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0х
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         @є
sequential_1/dropout_1/IdentityIdentity'sequential_1/dense_2/Relu:activations:0*
T0*'
_output_shapes
:         @ъ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0х
sequential_1/dense_3/MatMulMatMul(sequential_1/dropout_1/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ю
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0х
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ђ
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ў
NoOpNoOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*^sequential_1/embedding_1/embedding_lookup-^sequential_1/lstm_2/lstm_cell/ReadVariableOp/^sequential_1/lstm_2/lstm_cell/ReadVariableOp_1/^sequential_1/lstm_2/lstm_cell/ReadVariableOp_2/^sequential_1/lstm_2/lstm_cell/ReadVariableOp_33^sequential_1/lstm_2/lstm_cell/split/ReadVariableOp5^sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOp^sequential_1/lstm_2/while-^sequential_1/lstm_3/lstm_cell/ReadVariableOp/^sequential_1/lstm_3/lstm_cell/ReadVariableOp_1/^sequential_1/lstm_3/lstm_cell/ReadVariableOp_2/^sequential_1/lstm_3/lstm_cell/ReadVariableOp_33^sequential_1/lstm_3/lstm_cell/split/ReadVariableOp5^sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOp^sequential_1/lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2V
)sequential_1/embedding_1/embedding_lookup)sequential_1/embedding_1/embedding_lookup2`
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_1.sequential_1/lstm_2/lstm_cell/ReadVariableOp_12`
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_2.sequential_1/lstm_2/lstm_cell/ReadVariableOp_22`
.sequential_1/lstm_2/lstm_cell/ReadVariableOp_3.sequential_1/lstm_2/lstm_cell/ReadVariableOp_32\
,sequential_1/lstm_2/lstm_cell/ReadVariableOp,sequential_1/lstm_2/lstm_cell/ReadVariableOp2h
2sequential_1/lstm_2/lstm_cell/split/ReadVariableOp2sequential_1/lstm_2/lstm_cell/split/ReadVariableOp2l
4sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOp4sequential_1/lstm_2/lstm_cell/split_1/ReadVariableOp26
sequential_1/lstm_2/whilesequential_1/lstm_2/while2`
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_1.sequential_1/lstm_3/lstm_cell/ReadVariableOp_12`
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_2.sequential_1/lstm_3/lstm_cell/ReadVariableOp_22`
.sequential_1/lstm_3/lstm_cell/ReadVariableOp_3.sequential_1/lstm_3/lstm_cell/ReadVariableOp_32\
,sequential_1/lstm_3/lstm_cell/ReadVariableOp,sequential_1/lstm_3/lstm_cell/ReadVariableOp2h
2sequential_1/lstm_3/lstm_cell/split/ReadVariableOp2sequential_1/lstm_3/lstm_cell/split/ReadVariableOp2l
4sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOp4sequential_1/lstm_3/lstm_cell/split_1/ReadVariableOp26
sequential_1/lstm_3/whilesequential_1/lstm_3/while:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:&"
 
_user_specified_name175296:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
┬	
├
while_cond_177385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177385___redundant_placeholder04
0while_while_cond_177385___redundant_placeholder14
0while_while_cond_177385___redundant_placeholder24
0while_while_cond_177385___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ф

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_180937

inputs
identityѕR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::ь¤Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_178139

inputs;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_178004*
condR
while_cond_178003*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
љE
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176679

inputs

states
states_11
split_readvariableop_resource:
ђђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         ђU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @Y
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         @_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         @_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         @_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @\
mul_4Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:         @\
mul_5Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:         @\
mul_6Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:         @\
mul_7Mulstatesones_like_1:output:0*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         @U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         @Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         @ю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         @
 
_user_specified_namestates:OK
'
_output_shapes
:         @
 
_user_specified_namestates:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
Д9
щ
B__inference_lstm_3_layer_call_and_return_conditional_losses_176567

inputs$
lstm_cell_176483:
ђђ
lstm_cell_176485:	ђ#
lstm_cell_176487:	@ђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maskТ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_176483lstm_cell_176485lstm_cell_176487*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176482n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Љ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_176483lstm_cell_176485lstm_cell_176487*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176497*
condR
while_cond_176496*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  ђ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name176487:&"
 
_user_specified_name176485:&"
 
_user_specified_name176483:] Y
5
_output_shapes#
!:                  ђ
 
_user_specified_nameinputs
┬	
├
while_cond_179832
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179832___redundant_placeholder04
0while_while_cond_179832___redundant_placeholder14
0while_while_cond_179832___redundant_placeholder24
0while_while_cond_179832___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
К8
щ
B__inference_lstm_2_layer_call_and_return_conditional_losses_176055

inputs#
lstm_cell_175973:	dђ
lstm_cell_175975:	ђ$
lstm_cell_175977:
ђђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_175973lstm_cell_175975lstm_cell_175977*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175972n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ћ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_175973lstm_cell_175975lstm_cell_175977*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_175986*
condR
while_cond_175985*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ђN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name175977:&"
 
_user_specified_name175975:&"
 
_user_specified_name175973:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
н
х
'__inference_lstm_2_layer_call_fn_178376

inputs
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identityѕбStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         dђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_177205t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:         dђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178372:&"
 
_user_specified_name178370:&"
 
_user_specified_name178368:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
■
и
'__inference_lstm_2_layer_call_fn_178354
inputs_0
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_176055}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178350:&"
 
_user_specified_name178348:&"
 
_user_specified_name178346:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs_0
╝
З
*__inference_lstm_cell_layer_call_fn_181241

inputs
states_0
states_1
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallЦ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         @q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181233:&"
 
_user_specified_name181231:&"
 
_user_specified_name181229:QM
'
_output_shapes
:         @
"
_user_specified_name
states_1:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
─
З
*__inference_lstm_cell_layer_call_fn_180996

inputs
states_0
states_1
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176167p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ђr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name180988:&"
 
_user_specified_name180986:&"
 
_user_specified_name180984:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_1:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
йE
Д
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176167

inputs

states
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ+
readvariableop_resource:
ђђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         dU
ones_like_1/ShapeShapestates*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_1Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_2Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dZ
mul_3Mulinputsones_like:output:0*
T0*'
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ђ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ђ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ђ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ђS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ў
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ђm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ђm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ђm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ђ]
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ђ]
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ђ]
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ђ]
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:         ђh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ђe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ђN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ђi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ђX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ђj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ђi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ђJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ђV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ђi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ђL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ђ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ђю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:PL
(
_output_shapes
:         ђ
 
_user_specified_namestates:PL
(
_output_shapes
:         ђ
 
_user_specified_namestates:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
Г
Ђ
,__inference_embedding_1_layer_call_fn_178334

inputs
unknown:	љNd
identityѕбStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         dd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_176831s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         dd<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         d: 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178330:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┬	
├
while_cond_180759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180759___redundant_placeholder04
0while_while_cond_180759___redundant_placeholder14
0while_while_cond_180759___redundant_placeholder24
0while_while_cond_180759___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ђ─
ѓ	
while_body_177386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?А
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>О
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    н
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @ф
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
п
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_180942

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ѕ
Д
-__inference_sequential_1_layer_call_fn_178191
embedding_1_input
unknown:	љNd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:
ђђ
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	@ђ
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityѕбStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177639o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178187:&
"
 
_user_specified_name178185:&	"
 
_user_specified_name178183:&"
 
_user_specified_name178181:&"
 
_user_specified_name178179:&"
 
_user_specified_name178177:&"
 
_user_specified_name178175:&"
 
_user_specified_name178173:&"
 
_user_specified_name178171:&"
 
_user_specified_name178169:&"
 
_user_specified_name178167:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
п
ъ
$__inference_signature_wrapper_178327
embedding_1_input
unknown:	љNd
	unknown_0:	dђ
	unknown_1:	ђ
	unknown_2:
ђђ
	unknown_3:
ђђ
	unknown_4:	ђ
	unknown_5:	@ђ
	unknown_6:@@
	unknown_7:@
	unknown_8:@
	unknown_9:
identityѕбStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallembedding_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *-
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__wrapped_model_175796o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):         d: : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name178323:&
"
 
_user_specified_name178321:&	"
 
_user_specified_name178319:&"
 
_user_specified_name178317:&"
 
_user_specified_name178315:&"
 
_user_specified_name178313:&"
 
_user_specified_name178311:&"
 
_user_specified_name178309:&"
 
_user_specified_name178307:&"
 
_user_specified_name178305:&"
 
_user_specified_name178303:Z V
'
_output_shapes
:         d
+
_user_specified_nameembedding_1_input
│
М
%sequential_1_lstm_2_while_cond_175405D
@sequential_1_lstm_2_while_sequential_1_lstm_2_while_loop_counterJ
Fsequential_1_lstm_2_while_sequential_1_lstm_2_while_maximum_iterations)
%sequential_1_lstm_2_while_placeholder+
'sequential_1_lstm_2_while_placeholder_1+
'sequential_1_lstm_2_while_placeholder_2+
'sequential_1_lstm_2_while_placeholder_3F
Bsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_175405___redundant_placeholder0\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_175405___redundant_placeholder1\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_175405___redundant_placeholder2\
Xsequential_1_lstm_2_while_sequential_1_lstm_2_while_cond_175405___redundant_placeholder3&
"sequential_1_lstm_2_while_identity
▓
sequential_1/lstm_2/while/LessLess%sequential_1_lstm_2_while_placeholderBsequential_1_lstm_2_while_less_sequential_1_lstm_2_strided_slice_1*
T0*
_output_shapes
: s
"sequential_1/lstm_2/while/IdentityIdentity"sequential_1/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_1_lstm_2_while_identity+sequential_1/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::[W

_output_shapes
: 
=
_user_specified_name%#sequential_1/lstm_2/strided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,sequential_1/lstm_2/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&sequential_1/lstm_2/while/loop_counter
ІК
╠
B__inference_lstm_2_layer_call_and_return_conditional_losses_179372

inputs:
'lstm_cell_split_readvariableop_resource:	dђ8
)lstm_cell_split_1_readvariableop_resource:	ђ5
!lstm_cell_readvariableop_resource:
ђђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d         dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Ћ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         d\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:         dq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>─
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╗
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         d^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:         ds
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>╩
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         d`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ю
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?Ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђu
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╦
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђЁ
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dЅ
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         d[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Є
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource*
_output_shapes
:	dђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitz
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђ~
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђ]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0Х
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЄ
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђІ
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђђ
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђ|
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ъ
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskє
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЃ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђb
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђt
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђu
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђ~
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Е
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskѕ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЄ
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђf
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђy
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : о
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_179174*
condR
while_cond_179173*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ├
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:d         ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:         dђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:         dђЯ
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         dd: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         dd
 
_user_specified_nameinputs
Вѓ
Е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181404

inputs
states_0
states_11
split_readvariableop_resource:
ђђ.
split_1_readvariableop_resource:	ђ*
readvariableop_resource:	@ђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:         ђR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:         ђ]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ћ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђ_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>Г
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?}
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @T
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @T
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?v
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*'
_output_shapes
:         @a
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>г
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @V
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @`
mulMulinputsdropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђd
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_split[
MatMulMatMulmul:z:0split:output:0*
T0*'
_output_shapes
:         @_
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*'
_output_shapes
:         @_
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*'
_output_shapes
:         @_
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*'
_output_shapes
:         @S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ћ
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:         @l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:         @l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:         @l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:         @e
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @e
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @e
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @e
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      в
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskg
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*'
_output_shapes
:         @d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:         @M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:         @h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         @W
mul_8MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         @i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:         @h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:         @I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         @U
mul_9MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:         @V
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*'
_output_shapes
:         @i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@ђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ш
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:         @h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:         @Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:         @K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:         @Z
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:         @Y
IdentityIdentity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @[

Identity_1Identity
mul_10:z:0^NoOp*
T0*'
_output_shapes
:         @Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:         @ю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:         ђ:         @:         @: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         @
"
_user_specified_name
states_1:QM
'
_output_shapes
:         @
"
_user_specified_name
states_0:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
к	
├
while_cond_177752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_177752___redundant_placeholder04
0while_while_cond_177752___redundant_placeholder14
0while_while_cond_177752___redundant_placeholder24
0while_while_cond_177752___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╣t
ѓ	
while_body_177753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0B
/while_lstm_cell_split_readvariableop_resource_0:	dђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ=
)while_lstm_cell_readvariableop_resource_0:
ђђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor@
-while_lstm_cell_split_readvariableop_resource:	dђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ;
'while_lstm_cell_readvariableop_resource:
ђђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Д
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:         dr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?«
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђб
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         dц
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:         da
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ћ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0*
_output_shapes
:	dђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_splitї
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*(
_output_shapes
:         ђљ
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*(
_output_shapes
:         ђc
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0╚
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_splitЎ
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*(
_output_shapes
:         ђЮ
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_4Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_5Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_6Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/mul_7Mulwhile_placeholder_2$while/lstm_cell/ones_like_1:output:0*
T0*(
_output_shapes
:         ђі
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      й
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskў
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*(
_output_shapes
:         ђЋ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*(
_output_shapes
:         ђn
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:         ђЃ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*(
_output_shapes
:         ђj
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*(
_output_shapes
:         ђє
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*(
_output_shapes
:         ђЄ
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*(
_output_shapes
:         ђї
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskџ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*(
_output_shapes
:         ђЎ
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:         ђr
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*(
_output_shapes
:         ђl
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*(
_output_shapes
:         ђІ
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ├
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:         ђw
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:         ђѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :         ђ:         ђ: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к	
├
while_cond_175985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_175985___redundant_placeholder04
0while_while_cond_175985___redundant_placeholder14
0while_while_cond_175985___redundant_placeholder24
0while_while_cond_175985___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
п
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_178156

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:         @[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
И
╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_180895

inputs;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_1Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_2Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђЂ
lstm_cell/mul_3Mulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @x
lstm_cell/mul_4Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_5Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_6Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_7Mulzeros:output:0lstm_cell/ones_like_1:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_180760*
condR
while_cond_180759*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
ПК
╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_180650

inputs;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_180451*
condR
while_cond_180450*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
к	
├
while_cond_179480
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179480___redundant_placeholder04
0while_while_cond_179480___redundant_placeholder14
0while_while_cond_179480___redundant_placeholder24
0while_while_cond_179480___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к	
├
while_cond_176180
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176180___redundant_placeholder04
0while_while_cond_176180___redundant_placeholder14
0while_while_cond_176180___redundant_placeholder24
0while_while_cond_176180___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ДИ
м
"__inference__traced_restore_181868
file_prefix:
'assignvariableop_embedding_1_embeddings:	љNd3
!assignvariableop_1_dense_2_kernel:@@-
assignvariableop_2_dense_2_bias:@3
!assignvariableop_3_dense_3_kernel:@-
assignvariableop_4_dense_3_bias:=
*assignvariableop_5_lstm_2_lstm_cell_kernel:	dђH
4assignvariableop_6_lstm_2_lstm_cell_recurrent_kernel:
ђђ7
(assignvariableop_7_lstm_2_lstm_cell_bias:	ђ>
*assignvariableop_8_lstm_3_lstm_cell_kernel:
ђђG
4assignvariableop_9_lstm_3_lstm_cell_recurrent_kernel:	@ђ8
)assignvariableop_10_lstm_3_lstm_cell_bias:	ђ'
assignvariableop_11_iteration:	 +
!assignvariableop_12_learning_rate: D
1assignvariableop_13_adam_m_embedding_1_embeddings:	љNdD
1assignvariableop_14_adam_v_embedding_1_embeddings:	љNdE
2assignvariableop_15_adam_m_lstm_2_lstm_cell_kernel:	dђE
2assignvariableop_16_adam_v_lstm_2_lstm_cell_kernel:	dђP
<assignvariableop_17_adam_m_lstm_2_lstm_cell_recurrent_kernel:
ђђP
<assignvariableop_18_adam_v_lstm_2_lstm_cell_recurrent_kernel:
ђђ?
0assignvariableop_19_adam_m_lstm_2_lstm_cell_bias:	ђ?
0assignvariableop_20_adam_v_lstm_2_lstm_cell_bias:	ђF
2assignvariableop_21_adam_m_lstm_3_lstm_cell_kernel:
ђђF
2assignvariableop_22_adam_v_lstm_3_lstm_cell_kernel:
ђђO
<assignvariableop_23_adam_m_lstm_3_lstm_cell_recurrent_kernel:	@ђO
<assignvariableop_24_adam_v_lstm_3_lstm_cell_recurrent_kernel:	@ђ?
0assignvariableop_25_adam_m_lstm_3_lstm_cell_bias:	ђ?
0assignvariableop_26_adam_v_lstm_3_lstm_cell_bias:	ђ;
)assignvariableop_27_adam_m_dense_2_kernel:@@;
)assignvariableop_28_adam_v_dense_2_kernel:@@5
'assignvariableop_29_adam_m_dense_2_bias:@5
'assignvariableop_30_adam_v_dense_2_bias:@;
)assignvariableop_31_adam_m_dense_3_kernel:@;
)assignvariableop_32_adam_v_dense_3_kernel:@5
'assignvariableop_33_adam_m_dense_3_bias:5
'assignvariableop_34_adam_v_dense_3_bias:%
assignvariableop_35_total_1: %
assignvariableop_36_count_1: #
assignvariableop_37_total: #
assignvariableop_38_count: 
identity_40ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9├
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*ж
value▀B▄(B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH└
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ж
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Х
_output_shapesБ
а::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOpAssignVariableOp'assignvariableop_embedding_1_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_2_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_2_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_3_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_3_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_5AssignVariableOp*assignvariableop_5_lstm_2_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_6AssignVariableOp4assignvariableop_6_lstm_2_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_7AssignVariableOp(assignvariableop_7_lstm_2_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_8AssignVariableOp*assignvariableop_8_lstm_3_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_9AssignVariableOp4assignvariableop_9_lstm_3_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_10AssignVariableOp)assignvariableop_10_lstm_3_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:Х
AssignVariableOp_11AssignVariableOpassignvariableop_11_iterationIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_12AssignVariableOp!assignvariableop_12_learning_rateIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_13AssignVariableOp1assignvariableop_13_adam_m_embedding_1_embeddingsIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_14AssignVariableOp1assignvariableop_14_adam_v_embedding_1_embeddingsIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_m_lstm_2_lstm_cell_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_v_lstm_2_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_17AssignVariableOp<assignvariableop_17_adam_m_lstm_2_lstm_cell_recurrent_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_18AssignVariableOp<assignvariableop_18_adam_v_lstm_2_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_19AssignVariableOp0assignvariableop_19_adam_m_lstm_2_lstm_cell_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_v_lstm_2_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_21AssignVariableOp2assignvariableop_21_adam_m_lstm_3_lstm_cell_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_22AssignVariableOp2assignvariableop_22_adam_v_lstm_3_lstm_cell_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_23AssignVariableOp<assignvariableop_23_adam_m_lstm_3_lstm_cell_recurrent_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_24AssignVariableOp<assignvariableop_24_adam_v_lstm_3_lstm_cell_recurrent_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adam_m_lstm_3_lstm_cell_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_26AssignVariableOp0assignvariableop_26_adam_v_lstm_3_lstm_cell_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_m_dense_2_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_v_dense_2_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_m_dense_2_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_v_dense_2_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_m_dense_3_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_v_dense_3_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_m_dense_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_v_dense_3_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_35AssignVariableOpassignvariableop_35_total_1Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_36AssignVariableOpassignvariableop_36_count_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Е
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: Ы
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_40Identity_40:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%'!

_user_specified_namecount:%&!

_user_specified_nametotal:'%#
!
_user_specified_name	count_1:'$#
!
_user_specified_name	total_1:3#/
-
_user_specified_nameAdam/v/dense_3/bias:3"/
-
_user_specified_nameAdam/m/dense_3/bias:5!1
/
_user_specified_nameAdam/v/dense_3/kernel:5 1
/
_user_specified_nameAdam/m/dense_3/kernel:3/
-
_user_specified_nameAdam/v/dense_2/bias:3/
-
_user_specified_nameAdam/m/dense_2/bias:51
/
_user_specified_nameAdam/v/dense_2/kernel:51
/
_user_specified_nameAdam/m/dense_2/kernel:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:<8
6
_user_specified_nameAdam/v/lstm_2/lstm_cell/bias:<8
6
_user_specified_nameAdam/m/lstm_2/lstm_cell/bias:HD
B
_user_specified_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel:>:
8
_user_specified_name Adam/v/lstm_2/lstm_cell/kernel:>:
8
_user_specified_name Adam/m/lstm_2/lstm_cell/kernel:=9
7
_user_specified_nameAdam/v/embedding_1/embeddings:=9
7
_user_specified_nameAdam/m/embedding_1/embeddings:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:51
/
_user_specified_namelstm_3/lstm_cell/bias:A
=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:7	3
1
_user_specified_namelstm_3/lstm_cell/kernel:51
/
_user_specified_namelstm_2/lstm_cell/bias:A=
;
_user_specified_name#!lstm_2/lstm_cell/recurrent_kernel:73
1
_user_specified_namelstm_2/lstm_cell/kernel:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:62
0
_user_specified_nameembedding_1/embeddings:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
─
З
*__inference_lstm_cell_layer_call_fn_180979

inputs
states_0
states_1
unknown:	dђ
	unknown_0:	ђ
	unknown_1:
ђђ
identity

identity_1

identity_2ѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175972p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         ђr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:         ђr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:         ђ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name180971:&"
 
_user_specified_name180969:&"
 
_user_specified_name180967:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_1:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
ЎЃ
Е
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181142

inputs
states_0
states_10
split_readvariableop_resource:	dђ.
split_1_readvariableop_resource:	ђ+
readvariableop_resource:
ђђ
identity

identity_1

identity_2ѕбReadVariableOpбReadVariableOp_1бReadVariableOp_2бReadVariableOp_3бsplit/ReadVariableOpбsplit_1/ReadVariableOpS
ones_like/ShapeShapeinputs*
T0*
_output_shapes
::ь¤T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:         dR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:         d]
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2    [
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>д
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Њ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*'
_output_shapes
:         dT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n█Х?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:         d_
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
::ь¤Ю
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:         d*
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *џЎЎ>г
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         dV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Џ
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*'
_output_shapes
:         dW
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
::ь¤V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:         ђT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_4/SelectV2SelectV2dropout_4/GreaterEqual:z:0dropout_4/Mul:z:0dropout_4/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_5/SelectV2SelectV2dropout_5/GreaterEqual:z:0dropout_5/Mul:z:0dropout_5/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_6/SelectV2SelectV2dropout_6/GreaterEqual:z:0dropout_6/Mul:z:0dropout_6/Const_1:output:0*
T0*(
_output_shapes
:         ђT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:         ђa
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
::ь¤ъ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>Г
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђV
dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ю
dropout_7/SelectV2SelectV2dropout_7/GreaterEqual:z:0dropout_7/Mul:z:0dropout_7/Const_1:output:0*
T0*(
_output_shapes
:         ђ_
mulMulinputsdropout/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_1Mulinputsdropout_1/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_2Mulinputsdropout_2/SelectV2:output:0*
T0*'
_output_shapes
:         dc
mul_3Mulinputsdropout_3/SelectV2:output:0*
T0*'
_output_shapes
:         dQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	dђ*
dtype0б
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:         ђ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:         ђ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:         ђ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:         ђS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0ў
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:ђ:ђ:ђ:ђ*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:         ђm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:         ђm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:         ђm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:         ђf
mul_4Mulstates_0dropout_4/SelectV2:output:0*
T0*(
_output_shapes
:         ђf
mul_5Mulstates_0dropout_5/SelectV2:output:0*
T0*(
_output_shapes
:         ђf
mul_6Mulstates_0dropout_6/SelectV2:output:0*
T0*(
_output_shapes
:         ђf
mul_7Mulstates_0dropout_7/SelectV2:output:0*
T0*(
_output_shapes
:         ђh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ь
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:         ђe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:         ђN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:         ђi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:         ђX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:         ђj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:         ђi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:         ђJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:         ђV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:         ђj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
ђђ*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      э
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ђђ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:         ђi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:         ђR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:         ђL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:         ђ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:         ђ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:         ђю
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         d:         ђ:         ђ: : : 2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32 
ReadVariableOpReadVariableOp2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_1:RN
(
_output_shapes
:         ђ
"
_user_specified_name
states_0:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
┬	
├
while_cond_176693
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176693___redundant_placeholder04
0while_while_cond_176693___redundant_placeholder14
0while_while_cond_176693___redundant_placeholder24
0while_while_cond_176693___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
К8
щ
B__inference_lstm_2_layer_call_and_return_conditional_losses_176250

inputs#
lstm_cell_176168:	dђ
lstm_cell_176170:	ђ$
lstm_cell_176172:
ђђ
identityѕб!lstm_cell/StatefulPartitionedCallбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  dR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_176168lstm_cell_176170lstm_cell_176172*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:         ђ:         ђ:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176167n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ћ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_176168lstm_cell_176170lstm_cell_176172*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :         ђ:         ђ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_176181*
condR
while_cond_176180*M
output_shapes<
:: : : : :         ђ:         ђ: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:                  ђN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name176172:&"
 
_user_specified_name176170:&"
 
_user_specified_name176168:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
╠
х
'__inference_lstm_3_layer_call_fn_179648

inputs
unknown:
ђђ
	unknown_0:	ђ
	unknown_1:	@ђ
identityѕбStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_177585o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name179644:&"
 
_user_specified_name179642:&"
 
_user_specified_name179640:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
ПК
╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_177585

inputs;
'lstm_cell_split_readvariableop_resource:
ђђ8
)lstm_cell_split_1_readvariableop_resource:	ђ4
!lstm_cell_readvariableop_resource:	@ђ
identityѕбlstm_cell/ReadVariableOpбlstm_cell/ReadVariableOp_1бlstm_cell/ReadVariableOp_2бlstm_cell/ReadVariableOp_3бlstm_cell/split/ReadVariableOpб lstm_cell/split_1/ReadVariableOpбwhileI
ShapeShapeinputs*
T0*
_output_shapes
::ь¤]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         @R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         @c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         ђR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::ь¤_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмє
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Я
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУм_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_masko
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
::ь¤^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?ќ
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђ\
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ј
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђq
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>┼
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╝
lstm_cell/dropout/SelectV2SelectV2"lstm_cell/dropout/GreaterEqual:z:0lstm_cell/dropout/Mul:z:0"lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_1/SelectV2SelectV2$lstm_cell/dropout_1/GreaterEqual:z:0lstm_cell/dropout_1/Mul:z:0$lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_2/SelectV2SelectV2$lstm_cell/dropout_2/GreaterEqual:z:0lstm_cell/dropout_2/Mul:z:0$lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Њ
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђs
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤▓
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╦
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђ`
lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
lstm_cell/dropout_3/SelectV2SelectV2$lstm_cell/dropout_3/GreaterEqual:z:0lstm_cell/dropout_3/Mul:z:0$lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђg
lstm_cell/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
::ь¤`
lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Џ
lstm_cell/ones_like_1Fill$lstm_cell/ones_like_1/Shape:output:0$lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_4/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_4/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_4/GreaterEqualGreaterEqual9lstm_cell/dropout_4/random_uniform/RandomUniform:output:0+lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_4/SelectV2SelectV2$lstm_cell/dropout_4/GreaterEqual:z:0lstm_cell/dropout_4/Mul:z:0$lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_5/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_5/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_5/GreaterEqualGreaterEqual9lstm_cell/dropout_5/random_uniform/RandomUniform:output:0+lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_5/SelectV2SelectV2$lstm_cell/dropout_5/GreaterEqual:z:0lstm_cell/dropout_5/Mul:z:0$lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_6/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_6/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_6/GreaterEqualGreaterEqual9lstm_cell/dropout_6/random_uniform/RandomUniform:output:0+lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_6/SelectV2SelectV2$lstm_cell/dropout_6/GreaterEqual:z:0lstm_cell/dropout_6/Mul:z:0$lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @^
lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?ћ
lstm_cell/dropout_7/MulMullstm_cell/ones_like_1:output:0"lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @u
lstm_cell/dropout_7/ShapeShapelstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤▒
0lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2g
"lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>╩
 lstm_cell/dropout_7/GreaterEqualGreaterEqual9lstm_cell/dropout_7/random_uniform/RandomUniform:output:0+lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @`
lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
lstm_cell/dropout_7/SelectV2SelectV2$lstm_cell/dropout_7/GreaterEqual:z:0lstm_cell/dropout_7/Mul:z:0$lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/mulMulstrided_slice_2:output:0#lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_1Mulstrided_slice_2:output:0%lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_2Mulstrided_slice_2:output:0%lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђі
lstm_cell/mul_3Mulstrided_slice_2:output:0%lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ѕ
lstm_cell/split/ReadVariableOpReadVariableOp'lstm_cell_split_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype0└
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0&lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splity
lstm_cell/MatMulMatMullstm_cell/mul:z:0lstm_cell/split:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_1MatMullstm_cell/mul_1:z:0lstm_cell/split:output:1*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_2MatMullstm_cell/mul_2:z:0lstm_cell/split:output:2*
T0*'
_output_shapes
:         @}
lstm_cell/MatMul_3MatMullstm_cell/mul_3:z:0lstm_cell/split:output:3*
T0*'
_output_shapes
:         @]
lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Є
 lstm_cell/split_1/ReadVariableOpReadVariableOp)lstm_cell_split_1_readvariableop_resource*
_output_shapes	
:ђ*
dtype0▓
lstm_cell/split_1Split$lstm_cell/split_1/split_dim:output:0(lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitє
lstm_cell/BiasAddBiasAddlstm_cell/MatMul:product:0lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_1BiasAddlstm_cell/MatMul_1:product:0lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_2BiasAddlstm_cell/MatMul_2:product:0lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @і
lstm_cell/BiasAdd_3BiasAddlstm_cell/MatMul_3:product:0lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @
lstm_cell/mul_4Mulzeros:output:0%lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_5Mulzeros:output:0%lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_6Mulzeros:output:0%lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @
lstm_cell/mul_7Mulzeros:output:0%lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @{
lstm_cell/ReadVariableOpReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0n
lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   p
lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ю
lstm_cell/strided_sliceStridedSlice lstm_cell/ReadVariableOp:value:0&lstm_cell/strided_slice/stack:output:0(lstm_cell/strided_slice/stack_1:output:0(lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЁ
lstm_cell/MatMul_4MatMullstm_cell/mul_4:z:0 lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ѓ
lstm_cell/addAddV2lstm_cell/BiasAdd:output:0lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @a
lstm_cell/SigmoidSigmoidlstm_cell/add:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_1ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   r
!lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_1StridedSlice"lstm_cell/ReadVariableOp_1:value:0(lstm_cell/strided_slice_1/stack:output:0*lstm_cell/strided_slice_1/stack_1:output:0*lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_5MatMullstm_cell/mul_5:z:0"lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_1AddV2lstm_cell/BiasAdd_1:output:0lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_1Sigmoidlstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_8Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_2ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   r
!lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_2StridedSlice"lstm_cell/ReadVariableOp_2:value:0(lstm_cell/strided_slice_2/stack:output:0*lstm_cell/strided_slice_2/stack_1:output:0*lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_6MatMullstm_cell/mul_6:z:0"lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_2AddV2lstm_cell/BiasAdd_2:output:0lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @]
lstm_cell/TanhTanhlstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @s
lstm_cell/mul_9Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @t
lstm_cell/add_3AddV2lstm_cell/mul_8:z:0lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @}
lstm_cell/ReadVariableOp_3ReadVariableOp!lstm_cell_readvariableop_resource*
_output_shapes
:	@ђ*
dtype0p
lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   r
!lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Д
lstm_cell/strided_slice_3StridedSlice"lstm_cell/ReadVariableOp_3:value:0(lstm_cell/strided_slice_3/stack:output:0*lstm_cell/strided_slice_3/stack_1:output:0*lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЄ
lstm_cell/MatMul_7MatMullstm_cell/mul_7:z:0"lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @є
lstm_cell/add_4AddV2lstm_cell/BiasAdd_3:output:0lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @e
lstm_cell/Sigmoid_2Sigmoidlstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @_
lstm_cell/Tanh_1Tanhlstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @x
lstm_cell/mul_10Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:жУмF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : м
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0'lstm_cell_split_readvariableop_resource)lstm_cell_split_1_readvariableop_resource!lstm_cell_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         @:         @: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_177386*
condR
while_cond_177385*K
output_shapes:
8: : : : :         @:         @: : : : : *
parallel_iterations Ђ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @   о
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         @*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Є
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         @*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ќ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         @[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         @Я
NoOpNoOp^lstm_cell/ReadVariableOp^lstm_cell/ReadVariableOp_1^lstm_cell/ReadVariableOp_2^lstm_cell/ReadVariableOp_3^lstm_cell/split/ReadVariableOp!^lstm_cell/split_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         dђ: : : 28
lstm_cell/ReadVariableOp_1lstm_cell/ReadVariableOp_128
lstm_cell/ReadVariableOp_2lstm_cell/ReadVariableOp_228
lstm_cell/ReadVariableOp_3lstm_cell/ReadVariableOp_324
lstm_cell/ReadVariableOplstm_cell/ReadVariableOp2@
lstm_cell/split/ReadVariableOplstm_cell/split/ReadVariableOp2D
 lstm_cell/split_1/ReadVariableOp lstm_cell/split_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:T P
,
_output_shapes
:         dђ
 
_user_specified_nameinputs
¤

З
C__inference_dense_3_layer_call_and_return_conditional_losses_180962

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
Ъ
F
*__inference_dropout_1_layer_call_fn_180925

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_178156`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         @:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
ђ─
ѓ	
while_body_180451
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
/while_lstm_cell_split_readvariableop_resource_0:
ђђ@
1while_lstm_cell_split_1_readvariableop_resource_0:	ђ<
)while_lstm_cell_readvariableop_resource_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
-while_lstm_cell_split_readvariableop_resource:
ђђ>
/while_lstm_cell_split_1_readvariableop_resource:	ђ:
'while_lstm_cell_readvariableop_resource:	@ђѕбwhile/lstm_cell/ReadVariableOpб while/lstm_cell/ReadVariableOp_1б while/lstm_cell/ReadVariableOp_2б while/lstm_cell/ReadVariableOp_3б$while/lstm_cell/split/ReadVariableOpб&while/lstm_cell/split_1/ReadVariableOpѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0Ї
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
::ь¤d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?е
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*(
_output_shapes
:         ђb
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?А
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*(
_output_shapes
:         ђ}
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2    k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>О
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    н
 while/lstm_cell/dropout/SelectV2SelectV2(while/lstm_cell/dropout/GreaterEqual:z:0while/lstm_cell/dropout/Mul:z:0(while/lstm_cell/dropout/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_1/SelectV2SelectV2*while/lstm_cell/dropout_1/GreaterEqual:z:0!while/lstm_cell/dropout_1/Mul:z:0*while/lstm_cell/dropout_1/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_2/SelectV2SelectV2*while/lstm_cell/dropout_2/GreaterEqual:z:0!while/lstm_cell/dropout_2/Mul:z:0*while/lstm_cell/dropout_2/Const_1:output:0*
T0*(
_output_shapes
:         ђd
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?Ц
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*(
_output_shapes
:         ђ
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
::ь¤Й
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*(
_output_shapes
:         ђ*
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>П
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         ђf
!while/lstm_cell/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ▄
"while/lstm_cell/dropout_3/SelectV2SelectV2*while/lstm_cell/dropout_3/GreaterEqual:z:0!while/lstm_cell/dropout_3/Mul:z:0*while/lstm_cell/dropout_3/Const_1:output:0*
T0*(
_output_shapes
:         ђr
!while/lstm_cell/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
::ь¤f
!while/lstm_cell/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ђ?Г
while/lstm_cell/ones_like_1Fill*while/lstm_cell/ones_like_1/Shape:output:0*while/lstm_cell/ones_like_1/Const:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_4/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_4/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_4/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_4/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_4/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_4/GreaterEqualGreaterEqual?while/lstm_cell/dropout_4/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_4/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_4/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_4/SelectV2SelectV2*while/lstm_cell/dropout_4/GreaterEqual:z:0!while/lstm_cell/dropout_4/Mul:z:0*while/lstm_cell/dropout_4/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_5/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_5/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_5/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_5/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_5/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_5/GreaterEqualGreaterEqual?while/lstm_cell/dropout_5/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_5/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_5/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_5/SelectV2SelectV2*while/lstm_cell/dropout_5/GreaterEqual:z:0!while/lstm_cell/dropout_5/Mul:z:0*while/lstm_cell/dropout_5/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_6/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_6/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_6/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_6/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_6/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_6/GreaterEqualGreaterEqual?while/lstm_cell/dropout_6/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_6/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_6/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_6/SelectV2SelectV2*while/lstm_cell/dropout_6/GreaterEqual:z:0!while/lstm_cell/dropout_6/Mul:z:0*while/lstm_cell/dropout_6/Const_1:output:0*
T0*'
_output_shapes
:         @d
while/lstm_cell/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  а?д
while/lstm_cell/dropout_7/MulMul$while/lstm_cell/ones_like_1:output:0(while/lstm_cell/dropout_7/Const:output:0*
T0*'
_output_shapes
:         @Ђ
while/lstm_cell/dropout_7/ShapeShape$while/lstm_cell/ones_like_1:output:0*
T0*
_output_shapes
::ь¤й
6while/lstm_cell/dropout_7/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_7/Shape:output:0*
T0*'
_output_shapes
:         @*
dtype0*
seed2m
(while/lstm_cell/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠L>▄
&while/lstm_cell/dropout_7/GreaterEqualGreaterEqual?while/lstm_cell/dropout_7/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_7/GreaterEqual/y:output:0*
T0*'
_output_shapes
:         @f
!while/lstm_cell/dropout_7/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    █
"while/lstm_cell/dropout_7/SelectV2SelectV2*while/lstm_cell/dropout_7/GreaterEqual:z:0!while/lstm_cell/dropout_7/Mul:z:0*while/lstm_cell/dropout_7/Const_1:output:0*
T0*'
_output_shapes
:         @ф
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/lstm_cell/dropout/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_1/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_2/SelectV2:output:0*
T0*(
_output_shapes
:         ђ«
while/lstm_cell/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0+while/lstm_cell/dropout_3/SelectV2:output:0*
T0*(
_output_shapes
:         ђa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ќ
$while/lstm_cell/split/ReadVariableOpReadVariableOp/while_lstm_cell_split_readvariableop_resource_0* 
_output_shapes
:
ђђ*
dtype0м
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0,while/lstm_cell/split/ReadVariableOp:value:0*
T0*@
_output_shapes.
,:	ђ@:	ђ@:	ђ@:	ђ@*
	num_splitІ
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_1MatMulwhile/lstm_cell/mul_1:z:0while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_2MatMulwhile/lstm_cell/mul_2:z:0while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         @Ј
while/lstm_cell/MatMul_3MatMulwhile/lstm_cell/mul_3:z:0while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         @c
!while/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ћ
&while/lstm_cell/split_1/ReadVariableOpReadVariableOp1while_lstm_cell_split_1_readvariableop_resource_0*
_output_shapes	
:ђ*
dtype0─
while/lstm_cell/split_1Split*while/lstm_cell/split_1/split_dim:output:0.while/lstm_cell/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitў
while/lstm_cell/BiasAddBiasAdd while/lstm_cell/MatMul:product:0 while/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_1BiasAdd"while/lstm_cell/MatMul_1:product:0 while/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_2BiasAdd"while/lstm_cell/MatMul_2:product:0 while/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:         @ю
while/lstm_cell/BiasAdd_3BiasAdd"while/lstm_cell/MatMul_3:product:0 while/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_4Mulwhile_placeholder_2+while/lstm_cell/dropout_4/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_5Mulwhile_placeholder_2+while/lstm_cell/dropout_5/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_6Mulwhile_placeholder_2+while/lstm_cell/dropout_6/SelectV2:output:0*
T0*'
_output_shapes
:         @љ
while/lstm_cell/mul_7Mulwhile_placeholder_2+while/lstm_cell/dropout_7/SelectV2:output:0*
T0*'
_output_shapes
:         @Ѕ
while/lstm_cell/ReadVariableOpReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0t
#while/lstm_cell/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%while/lstm_cell/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   v
%while/lstm_cell/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ╗
while/lstm_cell/strided_sliceStridedSlice&while/lstm_cell/ReadVariableOp:value:0,while/lstm_cell/strided_slice/stack:output:0.while/lstm_cell/strided_slice/stack_1:output:0.while/lstm_cell/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЌ
while/lstm_cell/MatMul_4MatMulwhile/lstm_cell/mul_4:z:0&while/lstm_cell/strided_slice:output:0*
T0*'
_output_shapes
:         @ћ
while/lstm_cell/addAddV2 while/lstm_cell/BiasAdd:output:0"while/lstm_cell/MatMul_4:product:0*
T0*'
_output_shapes
:         @m
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/add:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_1ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   x
'while/lstm_cell/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_1StridedSlice(while/lstm_cell/ReadVariableOp_1:value:0.while/lstm_cell/strided_slice_1/stack:output:00while/lstm_cell/strided_slice_1/stack_1:output:00while/lstm_cell/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_5MatMulwhile/lstm_cell/mul_5:z:0(while/lstm_cell/strided_slice_1:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_1AddV2"while/lstm_cell/BiasAdd_1:output:0"while/lstm_cell/MatMul_5:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         @ѓ
while/lstm_cell/mul_8Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_2ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"    ђ   x
'while/lstm_cell/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_2StridedSlice(while/lstm_cell/ReadVariableOp_2:value:0.while/lstm_cell/strided_slice_2/stack:output:00while/lstm_cell/strided_slice_2/stack_1:output:00while/lstm_cell/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_6MatMulwhile/lstm_cell/mul_6:z:0(while/lstm_cell/strided_slice_2:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_2AddV2"while/lstm_cell/BiasAdd_2:output:0"while/lstm_cell/MatMul_6:product:0*
T0*'
_output_shapes
:         @i
while/lstm_cell/TanhTanhwhile/lstm_cell/add_2:z:0*
T0*'
_output_shapes
:         @Ё
while/lstm_cell/mul_9Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:         @є
while/lstm_cell/add_3AddV2while/lstm_cell/mul_8:z:0while/lstm_cell/mul_9:z:0*
T0*'
_output_shapes
:         @І
 while/lstm_cell/ReadVariableOp_3ReadVariableOp)while_lstm_cell_readvariableop_resource_0*
_output_shapes
:	@ђ*
dtype0v
%while/lstm_cell/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    └   x
'while/lstm_cell/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ┼
while/lstm_cell/strided_slice_3StridedSlice(while/lstm_cell/ReadVariableOp_3:value:0.while/lstm_cell/strided_slice_3/stack:output:00while/lstm_cell/strided_slice_3/stack_1:output:00while/lstm_cell/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskЎ
while/lstm_cell/MatMul_7MatMulwhile/lstm_cell/mul_7:z:0(while/lstm_cell/strided_slice_3:output:0*
T0*'
_output_shapes
:         @ў
while/lstm_cell/add_4AddV2"while/lstm_cell/BiasAdd_3:output:0"while/lstm_cell/MatMul_7:product:0*
T0*'
_output_shapes
:         @q
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/add_4:z:0*
T0*'
_output_shapes
:         @k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:         @і
while/lstm_cell/mul_10Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:         @r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : в
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_10:z:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_10:z:0^while/NoOp*
T0*'
_output_shapes
:         @v
while/Identity_5Identitywhile/lstm_cell/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:         @ѓ

while/NoOpNoOp^while/lstm_cell/ReadVariableOp!^while/lstm_cell/ReadVariableOp_1!^while/lstm_cell/ReadVariableOp_2!^while/lstm_cell/ReadVariableOp_3%^while/lstm_cell/split/ReadVariableOp'^while/lstm_cell/split_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"T
'while_lstm_cell_readvariableop_resource)while_lstm_cell_readvariableop_resource_0"d
/while_lstm_cell_split_1_readvariableop_resource1while_lstm_cell_split_1_readvariableop_resource_0"`
-while_lstm_cell_split_readvariableop_resource/while_lstm_cell_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2D
 while/lstm_cell/ReadVariableOp_1 while/lstm_cell/ReadVariableOp_12D
 while/lstm_cell/ReadVariableOp_2 while/lstm_cell/ReadVariableOp_22D
 while/lstm_cell/ReadVariableOp_3 while/lstm_cell/ReadVariableOp_32@
while/lstm_cell/ReadVariableOpwhile/lstm_cell/ReadVariableOp2L
$while/lstm_cell/split/ReadVariableOp$while/lstm_cell/split/ReadVariableOp2P
&while/lstm_cell/split_1/ReadVariableOp&while/lstm_cell/split_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
р%
л
while_body_176694
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_176718_0:
ђђ'
while_lstm_cell_176720_0:	ђ+
while_lstm_cell_176722_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_176718:
ђђ%
while_lstm_cell_176720:	ђ)
while_lstm_cell_176722:	@ђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0ц
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176718_0while_lstm_cell_176720_0while_lstm_cell_176722_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176679r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ђ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_176718while_lstm_cell_176718_0"2
while_lstm_cell_176720while_lstm_cell_176720_0"2
while_lstm_cell_176722while_lstm_cell_176722_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name176722:&	"
 
_user_specified_name176720:&"
 
_user_specified_name176718:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╩

З
C__inference_dense_2_layer_call_and_return_conditional_losses_180915

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs
р%
л
while_body_176497
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_176521_0:
ђђ'
while_lstm_cell_176523_0:	ђ+
while_lstm_cell_176525_0:	@ђ
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_176521:
ђђ%
while_lstm_cell_176523:	ђ)
while_lstm_cell_176525:	@ђѕб'while/lstm_cell/StatefulPartitionedCallѕ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   Д
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         ђ*
element_dtype0ц
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_176521_0while_lstm_cell_176523_0while_lstm_cell_176525_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         @:         @:         @*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_176482r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ђ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:жУмM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: є
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Ї
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         @Ї
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         @R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_176521while_lstm_cell_176521_0"2
while_lstm_cell_176523while_lstm_cell_176523_0"2
while_lstm_cell_176525while_lstm_cell_176525_0"0
while_strided_slice_1while_strided_slice_1_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         @:         @: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name176525:&	"
 
_user_specified_name176523:&"
 
_user_specified_name176521:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_180450
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180450___redundant_placeholder04
0while_while_cond_180450___redundant_placeholder14
0while_while_cond_180450___redundant_placeholder24
0while_while_cond_180450___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к	
├
while_cond_179173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_179173___redundant_placeholder04
0while_while_cond_179173___redundant_placeholder14
0while_while_cond_179173___redundant_placeholder24
0while_while_cond_179173___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_176496
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_176496___redundant_placeholder04
0while_while_cond_176496___redundant_placeholder14
0while_while_cond_176496___redundant_placeholder24
0while_while_cond_176496___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         @:         @: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         @:-)
'
_output_shapes
:         @:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Й
serving_defaultф
O
embedding_1_input:
#serving_default_embedding_1_input:0         d;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:ЩЏ
Х
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer-4
layer_with_weights-4
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
┌
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec"
_tf_keras_rnn_layer
╗
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
╝
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator"
_tf_keras_layer
╗
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias"
_tf_keras_layer
n
0
@1
A2
B3
C4
D5
E6
/7
08
>9
?10"
trackable_list_wrapper
n
0
@1
A2
B3
C4
D5
E6
/7
08
>9
?10"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
═
Ktrace_0
Ltrace_12ќ
-__inference_sequential_1_layer_call_fn_178191
-__inference_sequential_1_layer_call_fn_178218х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zKtrace_0zLtrace_1
Ѓ
Mtrace_0
Ntrace_12╠
H__inference_sequential_1_layer_call_and_return_conditional_losses_177639
H__inference_sequential_1_layer_call_and_return_conditional_losses_178164х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zMtrace_0zNtrace_1
оBМ
!__inference__wrapped_model_175796embedding_1_input"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
O
_variables
P_iterations
Q_learning_rate
R_index_dict
S
_momentums
T_velocities
U_update_step_xla"
experimentalOptimizer
,
Vserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Т
\trace_02╔
,__inference_embedding_1_layer_call_fn_178334ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z\trace_0
Ђ
]trace_02С
G__inference_embedding_1_layer_call_and_return_conditional_losses_178343ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z]trace_0
):'	љNd2embedding_1/embeddings
5
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

^states
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▄
dtrace_0
etrace_1
ftrace_2
gtrace_32ы
'__inference_lstm_2_layer_call_fn_178354
'__inference_lstm_2_layer_call_fn_178365
'__inference_lstm_2_layer_call_fn_178376
'__inference_lstm_2_layer_call_fn_178387╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
╚
htrace_0
itrace_1
jtrace_2
ktrace_32П
B__inference_lstm_2_layer_call_and_return_conditional_losses_178758
B__inference_lstm_2_layer_call_and_return_conditional_losses_179001
B__inference_lstm_2_layer_call_and_return_conditional_losses_179372
B__inference_lstm_2_layer_call_and_return_conditional_losses_179615╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zhtrace_0zitrace_1zjtrace_2zktrace_3
"
_generic_user_object
Э
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses
r_random_generator
s
state_size

@kernel
Arecurrent_kernel
Bbias"
_tf_keras_layer
 "
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

tstates
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
▄
ztrace_0
{trace_1
|trace_2
}trace_32ы
'__inference_lstm_3_layer_call_fn_179626
'__inference_lstm_3_layer_call_fn_179637
'__inference_lstm_3_layer_call_fn_179648
'__inference_lstm_3_layer_call_fn_179659╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zztrace_0z{trace_1z|trace_2z}trace_3
╠
~trace_0
trace_1
ђtrace_2
Ђtrace_32П
B__inference_lstm_3_layer_call_and_return_conditional_losses_180032
B__inference_lstm_3_layer_call_and_return_conditional_losses_180277
B__inference_lstm_3_layer_call_and_return_conditional_losses_180650
B__inference_lstm_3_layer_call_and_return_conditional_losses_180895╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z~trace_0ztrace_1zђtrace_2zЂtrace_3
"
_generic_user_object
ђ
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
Ё	keras_api
є__call__
+Є&call_and_return_all_conditional_losses
ѕ_random_generator
Ѕ
state_size

Ckernel
Drecurrent_kernel
Ebias"
_tf_keras_layer
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
іnon_trainable_variables
Іlayers
їmetrics
 Їlayer_regularization_losses
јlayer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
С
Јtrace_02┼
(__inference_dense_2_layer_call_fn_180904ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЈtrace_0
 
љtrace_02Я
C__inference_dense_2_layer_call_and_return_conditional_losses_180915ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zљtrace_0
 :@@2dense_2/kernel
:@2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Љnon_trainable_variables
њlayers
Њmetrics
 ћlayer_regularization_losses
Ћlayer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
┐
ќtrace_0
Ќtrace_12ё
*__inference_dropout_1_layer_call_fn_180920
*__inference_dropout_1_layer_call_fn_180925Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zќtrace_0zЌtrace_1
ш
ўtrace_0
Ўtrace_12║
E__inference_dropout_1_layer_call_and_return_conditional_losses_180937
E__inference_dropout_1_layer_call_and_return_conditional_losses_180942Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zўtrace_0zЎtrace_1
"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
џnon_trainable_variables
Џlayers
юmetrics
 Юlayer_regularization_losses
ъlayer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
С
Ъtrace_02┼
(__inference_dense_3_layer_call_fn_180951ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЪtrace_0
 
аtrace_02Я
C__inference_dense_3_layer_call_and_return_conditional_losses_180962ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zаtrace_0
 :@2dense_3/kernel
:2dense_3/bias
*:(	dђ2lstm_2/lstm_cell/kernel
5:3
ђђ2!lstm_2/lstm_cell/recurrent_kernel
$:"ђ2lstm_2/lstm_cell/bias
+:)
ђђ2lstm_3/lstm_cell/kernel
4:2	@ђ2!lstm_3/lstm_cell/recurrent_kernel
$:"ђ2lstm_3/lstm_cell/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
А0
б1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 BЧ
-__inference_sequential_1_layer_call_fn_178191embedding_1_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 BЧ
-__inference_sequential_1_layer_call_fn_178218embedding_1_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177639embedding_1_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
џBЌ
H__inference_sequential_1_layer_call_and_return_conditional_losses_178164embedding_1_input"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
С
P0
Б1
ц2
Ц3
д4
Д5
е6
Е7
ф8
Ф9
г10
Г11
«12
»13
░14
▒15
▓16
│17
┤18
х19
Х20
и21
И22"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
y
Б0
Ц1
Д2
Е3
Ф4
Г5
»6
▒7
│8
х9
и10"
trackable_list_wrapper
y
ц0
д1
е2
ф3
г4
«5
░6
▓7
┤8
Х9
И10"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
НBм
$__inference_signature_wrapper_178327embedding_1_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBМ
,__inference_embedding_1_layer_call_fn_178334inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ыBЬ
G__inference_embedding_1_layer_call_and_return_conditional_losses_178343inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
'__inference_lstm_2_layer_call_fn_178354inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
'__inference_lstm_2_layer_call_fn_178365inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
'__inference_lstm_2_layer_call_fn_178376inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
'__inference_lstm_2_layer_call_fn_178387inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
B__inference_lstm_2_layer_call_and_return_conditional_losses_178758inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
B__inference_lstm_2_layer_call_and_return_conditional_losses_179001inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
B__inference_lstm_2_layer_call_and_return_conditional_losses_179372inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
B__inference_lstm_2_layer_call_and_return_conditional_losses_179615inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
@0
A1
B2"
trackable_list_wrapper
5
@0
A1
B2"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
йlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
╔
Йtrace_0
┐trace_12ј
*__inference_lstm_cell_layer_call_fn_180979
*__inference_lstm_cell_layer_call_fn_180996│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zЙtrace_0z┐trace_1
 
└trace_0
┴trace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181142
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181224│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z└trace_0z┴trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЁBѓ
'__inference_lstm_3_layer_call_fn_179626inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЁBѓ
'__inference_lstm_3_layer_call_fn_179637inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
'__inference_lstm_3_layer_call_fn_179648inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
'__inference_lstm_3_layer_call_fn_179659inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
B__inference_lstm_3_layer_call_and_return_conditional_losses_180032inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
аBЮ
B__inference_lstm_3_layer_call_and_return_conditional_losses_180277inputs_0"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
B__inference_lstm_3_layer_call_and_return_conditional_losses_180650inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
B__inference_lstm_3_layer_call_and_return_conditional_losses_180895inputs"╩
├▓┐
FullArgSpec:
args2џ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsб

 
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
5
C0
D1
E2"
trackable_list_wrapper
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
И
┬non_trainable_variables
├layers
─metrics
 ┼layer_regularization_losses
кlayer_metrics
ѓ	variables
Ѓtrainable_variables
ёregularization_losses
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
╔
Кtrace_0
╚trace_12ј
*__inference_lstm_cell_layer_call_fn_181241
*__inference_lstm_cell_layer_call_fn_181258│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zКtrace_0z╚trace_1
 
╔trace_0
╩trace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181404
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181486│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z╔trace_0z╩trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_dense_2_layer_call_fn_180904inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense_2_layer_call_and_return_conditional_losses_180915inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBР
*__inference_dropout_1_layer_call_fn_180920inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
тBР
*__inference_dropout_1_layer_call_fn_180925inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
E__inference_dropout_1_layer_call_and_return_conditional_losses_180937inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ђB§
E__inference_dropout_1_layer_call_and_return_conditional_losses_180942inputs"Е
б▓ъ
FullArgSpec!
argsџ
jinputs

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
мB¤
(__inference_dense_3_layer_call_fn_180951inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ьBЖ
C__inference_dense_3_layer_call_and_return_conditional_losses_180962inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
R
╦	variables
╠	keras_api

═total

╬count"
_tf_keras_metric
c
¤	variables
л	keras_api

Лtotal

мcount
М
_fn_kwargs"
_tf_keras_metric
.:,	љNd2Adam/m/embedding_1/embeddings
.:,	љNd2Adam/v/embedding_1/embeddings
/:-	dђ2Adam/m/lstm_2/lstm_cell/kernel
/:-	dђ2Adam/v/lstm_2/lstm_cell/kernel
::8
ђђ2(Adam/m/lstm_2/lstm_cell/recurrent_kernel
::8
ђђ2(Adam/v/lstm_2/lstm_cell/recurrent_kernel
):'ђ2Adam/m/lstm_2/lstm_cell/bias
):'ђ2Adam/v/lstm_2/lstm_cell/bias
0:.
ђђ2Adam/m/lstm_3/lstm_cell/kernel
0:.
ђђ2Adam/v/lstm_3/lstm_cell/kernel
9:7	@ђ2(Adam/m/lstm_3/lstm_cell/recurrent_kernel
9:7	@ђ2(Adam/v/lstm_3/lstm_cell/recurrent_kernel
):'ђ2Adam/m/lstm_3/lstm_cell/bias
):'ђ2Adam/v/lstm_3/lstm_cell/bias
%:#@@2Adam/m/dense_2/kernel
%:#@@2Adam/v/dense_2/kernel
:@2Adam/m/dense_2/bias
:@2Adam/v/dense_2/bias
%:#@2Adam/m/dense_3/kernel
%:#@2Adam/v/dense_3/kernel
:2Adam/m/dense_3/bias
:2Adam/v/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЃBђ
*__inference_lstm_cell_layer_call_fn_180979inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
*__inference_lstm_cell_layer_call_fn_180996inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181142inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181224inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЃBђ
*__inference_lstm_cell_layer_call_fn_181241inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЃBђ
*__inference_lstm_cell_layer_call_fn_181258inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181404inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ъBЏ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181486inputsstates_0states_1"│
г▓е
FullArgSpec+
args#џ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsб
p 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
0
═0
╬1"
trackable_list_wrapper
.
╦	variables"
_generic_user_object
:  (2total
:  (2count
0
Л0
м1"
trackable_list_wrapper
.
¤	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperА
!__inference__wrapped_model_175796|@BACED/0>?:б7
0б-
+і(
embedding_1_input         d
ф "1ф.
,
dense_3!і
dense_3         ф
C__inference_dense_2_layer_call_and_return_conditional_losses_180915c/0/б,
%б"
 і
inputs         @
ф ",б)
"і
tensor_0         @
џ ё
(__inference_dense_2_layer_call_fn_180904X/0/б,
%б"
 і
inputs         @
ф "!і
unknown         @ф
C__inference_dense_3_layer_call_and_return_conditional_losses_180962c>?/б,
%б"
 і
inputs         @
ф ",б)
"і
tensor_0         
џ ё
(__inference_dense_3_layer_call_fn_180951X>?/б,
%б"
 і
inputs         @
ф "!і
unknown         г
E__inference_dropout_1_layer_call_and_return_conditional_losses_180937c3б0
)б&
 і
inputs         @
p
ф ",б)
"і
tensor_0         @
џ г
E__inference_dropout_1_layer_call_and_return_conditional_losses_180942c3б0
)б&
 і
inputs         @
p 
ф ",б)
"і
tensor_0         @
џ є
*__inference_dropout_1_layer_call_fn_180920X3б0
)б&
 і
inputs         @
p
ф "!і
unknown         @є
*__inference_dropout_1_layer_call_fn_180925X3б0
)б&
 і
inputs         @
p 
ф "!і
unknown         @▒
G__inference_embedding_1_layer_call_and_return_conditional_losses_178343f/б,
%б"
 і
inputs         d
ф "0б-
&і#
tensor_0         dd
џ І
,__inference_embedding_1_layer_call_fn_178334[/б,
%б"
 і
inputs         d
ф "%і"
unknown         dd┘
B__inference_lstm_2_layer_call_and_return_conditional_losses_178758њ@BAOбL
EбB
4џ1
/і,
inputs_0                  d

 
p

 
ф ":б7
0і-
tensor_0                  ђ
џ ┘
B__inference_lstm_2_layer_call_and_return_conditional_losses_179001њ@BAOбL
EбB
4џ1
/і,
inputs_0                  d

 
p 

 
ф ":б7
0і-
tensor_0                  ђ
џ ┐
B__inference_lstm_2_layer_call_and_return_conditional_losses_179372y@BA?б<
5б2
$і!
inputs         dd

 
p

 
ф "1б.
'і$
tensor_0         dђ
џ ┐
B__inference_lstm_2_layer_call_and_return_conditional_losses_179615y@BA?б<
5б2
$і!
inputs         dd

 
p 

 
ф "1б.
'і$
tensor_0         dђ
џ │
'__inference_lstm_2_layer_call_fn_178354Є@BAOбL
EбB
4џ1
/і,
inputs_0                  d

 
p

 
ф "/і,
unknown                  ђ│
'__inference_lstm_2_layer_call_fn_178365Є@BAOбL
EбB
4џ1
/і,
inputs_0                  d

 
p 

 
ф "/і,
unknown                  ђЎ
'__inference_lstm_2_layer_call_fn_178376n@BA?б<
5б2
$і!
inputs         dd

 
p

 
ф "&і#
unknown         dђЎ
'__inference_lstm_2_layer_call_fn_178387n@BA?б<
5б2
$і!
inputs         dd

 
p 

 
ф "&і#
unknown         dђ╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_180032ЁCEDPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p

 
ф ",б)
"і
tensor_0         @
џ ╠
B__inference_lstm_3_layer_call_and_return_conditional_losses_180277ЁCEDPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p 

 
ф ",б)
"і
tensor_0         @
џ ╗
B__inference_lstm_3_layer_call_and_return_conditional_losses_180650uCED@б=
6б3
%і"
inputs         dђ

 
p

 
ф ",б)
"і
tensor_0         @
џ ╗
B__inference_lstm_3_layer_call_and_return_conditional_losses_180895uCED@б=
6б3
%і"
inputs         dђ

 
p 

 
ф ",б)
"і
tensor_0         @
џ Ц
'__inference_lstm_3_layer_call_fn_179626zCEDPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p

 
ф "!і
unknown         @Ц
'__inference_lstm_3_layer_call_fn_179637zCEDPбM
FбC
5џ2
0і-
inputs_0                  ђ

 
p 

 
ф "!і
unknown         @Ћ
'__inference_lstm_3_layer_call_fn_179648jCED@б=
6б3
%і"
inputs         dђ

 
p

 
ф "!і
unknown         @Ћ
'__inference_lstm_3_layer_call_fn_179659jCED@б=
6б3
%і"
inputs         dђ

 
p 

 
ф "!і
unknown         @С
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181142џ@BAѓб
xбu
 і
inputs         d
MбJ
#і 
states_0         ђ
#і 
states_1         ђ
p
ф "ЇбЅ
Ђб~
%і"

tensor_0_0         ђ
UџR
'і$
tensor_0_1_0         ђ
'і$
tensor_0_1_1         ђ
џ С
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181224џ@BAѓб
xбu
 і
inputs         d
MбJ
#і 
states_0         ђ
#і 
states_1         ђ
p 
ф "ЇбЅ
Ђб~
%і"

tensor_0_0         ђ
UџR
'і$
tensor_0_1_0         ђ
'і$
tensor_0_1_1         ђ
џ ▀
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181404ЋCEDЂб~
wбt
!і
inputs         ђ
KбH
"і
states_0         @
"і
states_1         @
p
ф "ЅбЁ
~б{
$і!

tensor_0_0         @
SџP
&і#
tensor_0_1_0         @
&і#
tensor_0_1_1         @
џ ▀
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181486ЋCEDЂб~
wбt
!і
inputs         ђ
KбH
"і
states_0         @
"і
states_1         @
p 
ф "ЅбЁ
~б{
$і!

tensor_0_0         @
SџP
&і#
tensor_0_1_0         @
&і#
tensor_0_1_1         @
џ Х
*__inference_lstm_cell_layer_call_fn_180979Є@BAѓб
xбu
 і
inputs         d
MбJ
#і 
states_0         ђ
#і 
states_1         ђ
p
ф "{бx
#і 
tensor_0         ђ
QџN
%і"

tensor_1_0         ђ
%і"

tensor_1_1         ђХ
*__inference_lstm_cell_layer_call_fn_180996Є@BAѓб
xбu
 і
inputs         d
MбJ
#і 
states_0         ђ
#і 
states_1         ђ
p 
ф "{бx
#і 
tensor_0         ђ
QџN
%і"

tensor_1_0         ђ
%і"

tensor_1_1         ђ▓
*__inference_lstm_cell_layer_call_fn_181241ЃCEDЂб~
wбt
!і
inputs         ђ
KбH
"і
states_0         @
"і
states_1         @
p
ф "xбu
"і
tensor_0         @
OџL
$і!

tensor_1_0         @
$і!

tensor_1_1         @▓
*__inference_lstm_cell_layer_call_fn_181258ЃCEDЂб~
wбt
!і
inputs         ђ
KбH
"і
states_0         @
"і
states_1         @
p 
ф "xбu
"і
tensor_0         @
OџL
$і!

tensor_1_0         @
$і!

tensor_1_1         @╦
H__inference_sequential_1_layer_call_and_return_conditional_losses_177639@BACED/0>?Bб?
8б5
+і(
embedding_1_input         d
p

 
ф ",б)
"і
tensor_0         
џ ╦
H__inference_sequential_1_layer_call_and_return_conditional_losses_178164@BACED/0>?Bб?
8б5
+і(
embedding_1_input         d
p 

 
ф ",б)
"і
tensor_0         
џ Ц
-__inference_sequential_1_layer_call_fn_178191t@BACED/0>?Bб?
8б5
+і(
embedding_1_input         d
p

 
ф "!і
unknown         Ц
-__inference_sequential_1_layer_call_fn_178218t@BACED/0>?Bб?
8б5
+і(
embedding_1_input         d
p 

 
ф "!і
unknown         ║
$__inference_signature_wrapper_178327Љ@BACED/0>?OбL
б 
EфB
@
embedding_1_input+і(
embedding_1_input         d"1ф.
,
dense_3!і
dense_3         