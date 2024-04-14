.class public Lgnu/bytecode/Method;
.super Ljava/lang/Object;
.source "Method.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Lgnu/bytecode/Member;


# instance fields
.field access_flags:I

.field arg_types:[Lgnu/bytecode/Type;

.field attributes:Lgnu/bytecode/Attribute;

.field classfile:Lgnu/bytecode/ClassType;

.field code:Lgnu/bytecode/CodeAttr;

.field exceptions:Lgnu/bytecode/ExceptionsAttr;

.field private name:Ljava/lang/String;

.field name_index:I

.field next:Lgnu/bytecode/Method;

.field return_type:Lgnu/bytecode/Type;

.field signature:Ljava/lang/String;

.field signature_index:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ClassType;I)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    if-nez v0, :cond_0

    .line 88
    iput-object p0, p1, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    iput-object p0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    .line 91
    :goto_0
    iput-object p0, p1, Lgnu/bytecode/ClassType;->last_method:Lgnu/bytecode/Method;

    .line 92
    iget v0, p1, Lgnu/bytecode/ClassType;->methods_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ClassType;->methods_count:I

    .line 93
    iput p2, p0, Lgnu/bytecode/Method;->access_flags:I

    .line 94
    iput-object p1, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Method;Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iget-object v0, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 79
    iget-object v0, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    .line 80
    iget-object v0, p1, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 81
    iget p1, p1, Lgnu/bytecode/Method;->access_flags:I

    iput p1, p0, Lgnu/bytecode/Method;->access_flags:I

    .line 82
    iput-object p2, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public static makeCloneMethod(Lgnu/bytecode/Type;)Lgnu/bytecode/Method;
    .locals 2

    .line 63
    new-instance v0, Lgnu/bytecode/Method;

    invoke-direct {v0}, Lgnu/bytecode/Method;-><init>()V

    const-string v1, "clone"

    .line 64
    iput-object v1, v0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 65
    iput v1, v0, Lgnu/bytecode/Method;->access_flags:I

    .line 66
    sget-object v1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v1, v0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 67
    iput-object p0, v0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    .line 68
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    iput-object p0, v0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public static makeSignature([Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Ljava/lang/String;
    .locals 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    array-length v1, p0

    const/16 v2, 0x28

    .line 254
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 256
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0x29

    .line 257
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public allocate_local(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {p1, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method assignConstants()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    .line 312
    iget v1, p0, Lgnu/bytecode/Method;->name_index:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Method;->name_index:I

    .line 314
    :cond_0
    iget v1, p0, Lgnu/bytecode/Method;->signature_index:I

    if-nez v1, :cond_1

    .line 315
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v0, p0, Lgnu/bytecode/Method;->signature_index:I

    .line 316
    :cond_1
    iget-object v0, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public cleanupAfterCompilation()V
    .locals 1

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    .line 389
    iput-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 390
    iput-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    return-void
.end method

.method public compile_checkcast(Lgnu/bytecode/Type;)V
    .locals 1

    .line 202
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public compile_push_this()V
    .locals 1

    .line 233
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    return-void
.end method

.method public compile_push_value(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 221
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public compile_store_value(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public final getCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .line 52
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    return-object v0
.end method

.method public final getConstants()Lgnu/bytecode/ConstantPool;
    .locals 1

    .line 125
    iget-object v0, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    return-object v0
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .locals 1

    .line 319
    iget-object v0, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getExceptionAttr()Lgnu/bytecode/ExceptionsAttr;
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    return-object v0
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .locals 1

    .line 327
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/ExceptionsAttr;->getExceptions()[Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 115
    iget v0, p0, Lgnu/bytecode/Method;->access_flags:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNext()Lgnu/bytecode/Method;
    .locals 1

    .line 356
    iget-object v0, p0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    return-object v0
.end method

.method public final getParameterTypes()[Lgnu/bytecode/Type;
    .locals 1

    .line 323
    iget-object v0, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .locals 1

    .line 321
    iget-object v0, p0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 266
    iget-object v0, p0, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    iget-object v1, p0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-static {v0, v1}, Lgnu/bytecode/Method;->makeSignature([Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    .line 268
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Method;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .locals 1

    .line 105
    iget v0, p0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initCode()V
    .locals 2

    .line 152
    iget-object v0, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    new-instance v1, Lgnu/bytecode/ConstantPool;

    invoke-direct {v1}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v1, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    :cond_0
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lgnu/bytecode/Method;->prepareCode(I)V

    .line 155
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    iget-object v1, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    iput-object v1, v0, Lgnu/bytecode/CodeAttr;->sourceDbgExt:Lgnu/bytecode/SourceDebugExtAttr;

    .line 156
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->noteParamTypes()V

    .line 157
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    return-void
.end method

.method public init_param_slots()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    return-void
.end method

.method instruction_start_hook(I)V
    .locals 0

    .line 194
    invoke-virtual {p0, p1}, Lgnu/bytecode/Method;->prepareCode(I)V

    return-void
.end method

.method public final isAbstract()Z
    .locals 1

    .line 110
    iget v0, p0, Lgnu/bytecode/Method;->access_flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method kill_local(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {p1, v0}, Lgnu/bytecode/Variable;->freeLocal(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public listParameters(Ljava/lang/StringBuffer;)V
    .locals 3

    .line 361
    iget-object v0, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    const/16 v1, 0x28

    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-lez v1, :cond_0

    const/16 v2, 0x2c

    .line 366
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 367
    :cond_0
    iget-object v2, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 369
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public maybe_compile_checkcast(Lgnu/bytecode/Type;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 209
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    :cond_0
    return-void
.end method

.method public popScope()Lgnu/bytecode/Scope;
    .locals 1

    .line 136
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    move-result-object v0

    return-object v0
.end method

.method final pop_stack_type()Lgnu/bytecode/Type;
    .locals 1

    .line 197
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method prepareCode(I)V
    .locals 1

    .line 183
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lgnu/bytecode/CodeAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/CodeAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    .line 185
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    return-void
.end method

.method public pushScope()Lgnu/bytecode/Scope;
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, v0}, Lgnu/bytecode/Method;->prepareCode(I)V

    .line 130
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v0

    return-object v0
.end method

.method final push_stack_type(Lgnu/bytecode/Type;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    return-void
.end method

.method public push_var(Lgnu/bytecode/Variable;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    return-void
.end method

.method public final reachableHere()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    return v0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lgnu/bytecode/Method;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lgnu/bytecode/ExceptionsAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 48
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public setExceptions([S)V
    .locals 2

    .line 39
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lgnu/bytecode/ExceptionsAttr;

    invoke-direct {v0, p0}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    iput-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    .line 41
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/Method;->exceptions:Lgnu/bytecode/ExceptionsAttr;

    iget-object v1, p0, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([SLgnu/bytecode/ClassType;)V

    return-void
.end method

.method public setModifiers(I)V
    .locals 0

    .line 120
    iput p1, p0, Lgnu/bytecode/Method;->access_flags:I

    return-void
.end method

.method public final setName(I)V
    .locals 2

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 349
    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    .line 351
    :goto_0
    iput p1, p0, Lgnu/bytecode/Method;->name_index:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    return-void
.end method

.method public setSignature(I)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolUtf8;

    .line 305
    iput p1, p0, Lgnu/bytecode/Method;->signature_index:I

    .line 306
    iget-object p1, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgnu/bytecode/Method;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 7

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "bad method signature"

    const/4 v2, 0x3

    if-lt v0, v2, :cond_3

    const/4 v2, 0x0

    .line 274
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    .line 278
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 284
    :goto_0
    invoke-static {p1, v4}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_2

    if-ge v4, v0, :cond_1

    .line 287
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    .line 295
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    .line 296
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 297
    iget-object v5, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/Type;

    aput-object v6, v5, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v4, 0x1

    sub-int/2addr v0, v4

    sub-int/2addr v0, v3

    .line 298
    invoke-static {p1, v1, v0}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    return-void

    .line 289
    :cond_1
    new-instance p1, Ljava/lang/ClassFormatError;

    invoke-direct {p1, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 291
    :cond_2
    invoke-static {p1, v4, v5}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v6

    .line 292
    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v4, v5

    goto :goto_0

    .line 275
    :cond_3
    new-instance p1, Ljava/lang/ClassFormatError;

    invoke-direct {p1, v1}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStaticFlag(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 99
    iget p1, p0, Lgnu/bytecode/Method;->access_flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgnu/bytecode/Method;->access_flags:I

    goto :goto_0

    .line 101
    :cond_0
    iget p1, p0, Lgnu/bytecode/Method;->access_flags:I

    xor-int/lit8 p1, p1, -0x9

    iput p1, p0, Lgnu/bytecode/Method;->access_flags:I

    :goto_0
    return-void
.end method

.method public startCode()Lgnu/bytecode/CodeAttr;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lgnu/bytecode/Method;->initCode()V

    .line 172
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->addParamLocals()V

    .line 173
    iget-object v0, p0, Lgnu/bytecode/Method;->code:Lgnu/bytecode/CodeAttr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 375
    invoke-virtual {p0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2e

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    iget-object v1, p0, Lgnu/bytecode/Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    iget-object v1, p0, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    if-eqz v1, :cond_0

    .line 380
    invoke-virtual {p0, v0}, Lgnu/bytecode/Method;->listParameters(Ljava/lang/StringBuffer;)V

    .line 381
    iget-object v1, p0, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget p2, p0, Lgnu/bytecode/Method;->access_flags:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 240
    iget p2, p0, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 241
    iget p2, p0, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 243
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    return-void
.end method
