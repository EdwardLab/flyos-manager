.class public Lgnu/expr/ConsumerTarget;
.super Lgnu/expr/Target;
.source "ConsumerTarget.java"


# instance fields
.field consumer:Lgnu/bytecode/Variable;

.field isContextTarget:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 47
    instance-of v0, p2, Lgnu/expr/ConsumerTarget;

    if-nez v0, :cond_1

    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v1, "make"

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    const-string v3, "canonicalize"

    invoke-virtual {v0, v3, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-static {p0, p1, p2, v1, v0}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_1
    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v1

    .line 66
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<init>"

    if-ne v2, v3, :cond_0

    .line 68
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 71
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 72
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 77
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    :goto_0
    const/4 p3, 0x0

    .line 79
    invoke-virtual {v1, v0, v2, p3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object p3

    .line 80
    new-instance v1, Lgnu/expr/ConsumerTarget;

    invoke-direct {v1, p3}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 81
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 82
    invoke-virtual {p0, p1, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 83
    invoke-virtual {v0, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    if-eqz p4, :cond_1

    .line 85
    invoke-virtual {v0, p4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 86
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    if-nez p4, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p4}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    :goto_1
    invoke-virtual {p2, p1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;
    .locals 3

    .line 30
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 32
    sget-object p0, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v1, "consumer"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 34
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object p0

    .line 35
    sget-object v1, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v2, "$result"

    invoke-virtual {p0, v0, v1, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 38
    new-instance v0, Lgnu/expr/ConsumerTarget;

    invoke-direct {v0, p0}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    const/4 p0, 0x1

    .line 39
    iput-boolean p0, v0, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    return-object v0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 1

    const/4 v0, -0x1

    .line 94
    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    return-void
.end method

.method compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V
    .locals 7

    .line 105
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    .line 110
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 112
    instance-of v0, p2, Lgnu/bytecode/PrimType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 114
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x46

    if-eq v0, v4, :cond_4

    const/16 v4, 0x53

    if-eq v0, v4, :cond_3

    const/16 v4, 0x56

    if-eq v0, v4, :cond_2

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x49

    if-eq v0, v4, :cond_3

    const/16 v4, 0x4a

    if-eq v0, v4, :cond_0

    packed-switch v0, :pswitch_data_0

    move-object v4, v1

    move-object v5, v4

    goto :goto_2

    .line 132
    :pswitch_0
    sget-object v4, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    const-string v5, "writeDouble"

    :goto_0
    const/4 v6, 0x1

    goto :goto_3

    .line 138
    :pswitch_1
    sget-object v4, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    const-string v5, "append"

    goto :goto_2

    .line 123
    :cond_0
    sget-object v4, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    const-string v5, "writeLong"

    goto :goto_0

    .line 146
    :cond_1
    sget-object v4, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    const-string v5, "writeBoolean"

    goto :goto_2

    :cond_2
    return-void

    .line 119
    :cond_3
    :pswitch_2
    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    const-string v5, "writeInt"

    goto :goto_2

    .line 128
    :cond_4
    sget-object v4, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    const-string v5, "writeFloat"

    goto :goto_2

    :cond_5
    if-eq p3, v3, :cond_8

    .line 154
    invoke-static {p2}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 161
    :cond_6
    sget-object p2, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const/4 v0, 0x2

    const-string v1, "writeValues"

    invoke-virtual {p2, v1, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p2

    .line 163
    iget-object v0, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    if-nez p3, :cond_7

    .line 165
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 166
    :cond_7
    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    return-void

    .line 157
    :cond_8
    :goto_1
    sget-object v4, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const-string v5, "writeObject"

    const/4 v0, 0x0

    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-ltz p3, :cond_9

    goto :goto_4

    :cond_9
    if-eqz v6, :cond_a

    .line 174
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 175
    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 177
    iget-object p3, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {p1, p3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 179
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto :goto_4

    .line 183
    :cond_a
    iget-object p2, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 184
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    :goto_4
    if-eqz v5, :cond_b

    new-array p2, v3, [Lgnu/bytecode/Type;

    aput-object v4, p2, v2

    .line 189
    sget-object p3, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual {p3, v5, p2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_c

    .line 193
    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    :cond_c
    const/16 p2, 0x43

    if-ne v0, p2, :cond_d

    .line 195
    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z
    .locals 3

    .line 200
    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 202
    instance-of v1, v0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {v0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 207
    invoke-static {v0}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 208
    invoke-virtual {p1, p2, v1}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const/4 p1, 0x1

    .line 209
    invoke-virtual {p0, p2, v0, p1}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getConsumerVariable()Lgnu/bytecode/Variable;
    .locals 1

    .line 22
    iget-object v0, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 215
    sget-object v0, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isContextTarget()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    return v0
.end method
