.class public Lgnu/expr/ApplyExp;
.super Lgnu/expr/Expression;
.source "ApplyExp.java"


# static fields
.field public static final INLINE_IF_CONSTANT:I = 0x4

.field public static final MAY_CONTAIN_BACK_JUMP:I = 0x8

.field public static final TAILCALL:I = 0x2


# instance fields
.field args:[Lgnu/expr/Expression;

.field context:Lgnu/expr/LambdaExp;

.field func:Lgnu/expr/Expression;

.field public nextCall:Lgnu/expr/ApplyExp;

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public varargs constructor <init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V
    .locals 2

    .line 52
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    return-void
.end method

.method public varargs constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public varargs constructor <init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public static asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;
    .locals 1

    .line 575
    instance-of v0, p0, Lgnu/expr/Inlineable;

    if-eqz v0, :cond_0

    .line 576
    check-cast p0, Lgnu/expr/Inlineable;

    return-object p0

    .line 577
    :cond_0
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v0, p0}, Lgnu/mapping/LazyPropertyKey;->get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/expr/Inlineable;

    return-object p0
.end method

.method public static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    return-void
.end method

.method static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V
    .locals 11

    .line 121
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    .line 122
    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 127
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v1

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 130
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-object v4, v3

    :goto_0
    move-object v5, v4

    goto/16 :goto_4

    .line 134
    :cond_0
    instance-of v2, v1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_6

    .line 136
    move-object v2, v1

    check-cast v2, Lgnu/expr/ReferenceExp;

    .line 137
    invoke-virtual {v2}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 138
    iget-object v2, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    :goto_1
    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v5, v5, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_2

    .line 142
    iget-object v5, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v5, Lgnu/expr/ReferenceExp;

    if-nez v4, :cond_2

    .line 143
    invoke-virtual {v2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v6, :cond_1

    goto :goto_2

    .line 145
    :cond_1
    iget-object v2, v5, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 146
    invoke-virtual {v5}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    goto :goto_1

    :cond_2
    :goto_2
    const-wide/32 v5, 0x10000

    .line 148
    invoke-virtual {v2, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-nez v5, :cond_5

    .line 150
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 151
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 152
    instance-of v2, v5, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_3

    .line 153
    move-object v2, v5

    check-cast v2, Lgnu/expr/LambdaExp;

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    if-eqz v5, :cond_4

    .line 154
    instance-of v6, v5, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_4

    .line 155
    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object v5, v3

    goto :goto_4

    :cond_5
    move-object v2, v3

    move-object v5, v2

    goto :goto_4

    .line 158
    :cond_6
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_7

    .line 160
    move-object v2, v1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v3

    move-object v4, v2

    goto :goto_4

    :cond_7
    move-object v2, v3

    move-object v4, v2

    goto :goto_0

    :goto_4
    const/16 v6, 0x65

    const/4 v7, 0x0

    if-eqz p3, :cond_a

    .line 162
    instance-of p3, v5, Lgnu/mapping/Procedure;

    if-eqz p3, :cond_a

    .line 164
    move-object p3, v5

    check-cast p3, Lgnu/mapping/Procedure;

    .line 165
    instance-of v8, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v8, :cond_9

    invoke-virtual {p3}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_5
    if-ge v7, v0, :cond_8

    .line 168
    iget-object p3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object p3, p3, v7

    invoke-virtual {p3, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    return-void

    .line 173
    :cond_9
    :try_start_0
    invoke-static {p3, p0, p1, p2}, Lgnu/expr/ApplyExp;->inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_a

    return-void

    :catchall_0
    move-exception p0

    .line 178
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "caught exception in inline-compiler for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v6, p2, p0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 183
    :cond_a
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p3

    const/4 v5, 0x2

    if-eqz v2, :cond_14

    .line 188
    iget v8, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v8, :cond_b

    iget v8, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v0, v8, :cond_13

    :cond_b
    iget v8, v2, Lgnu/expr/LambdaExp;->min_args:I

    if-lt v0, v8, :cond_13

    .line 193
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v8

    .line 196
    invoke-virtual {p1, v2}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-le v8, v5, :cond_c

    const/4 v9, 0x3

    if-ne v8, v9, :cond_14

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v8

    if-nez v8, :cond_14

    :cond_c
    invoke-virtual {v2, v0}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 202
    new-instance v0, Lgnu/expr/PrimProcedure;

    invoke-direct {v0, v8, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 203
    invoke-virtual {v8}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 206
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 210
    :cond_d
    iget-object v5, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v5, v2, :cond_f

    .line 211
    iget-object v4, v2, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_e

    iget-object v2, v2, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_6

    :cond_e
    iget-object v2, v2, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    :goto_6
    invoke-virtual {p3, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_7

    :cond_f
    if-eqz v4, :cond_10

    .line 215
    sget-object p3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, v3, v7, p1, p3}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_7

    .line 217
    :cond_10
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    invoke-virtual {p3, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    :goto_7
    move v7, v1

    :cond_11
    if-eqz v7, :cond_12

    .line 220
    sget-object v3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    :cond_12
    invoke-virtual {v0, v3, p0, p1, p2}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void

    .line 191
    :cond_13
    new-instance p0, Ljava/lang/Error;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "internal error - wrong number of parameters for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 284
    :cond_14
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v4

    const/4 v8, 0x1

    if-eqz v4, :cond_15

    if-eqz v2, :cond_15

    iget-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v2, v4, :cond_15

    const/4 v4, 0x1

    goto :goto_8

    :cond_15
    const/4 v4, 0x0

    :goto_8
    if-eqz v2, :cond_17

    .line 288
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v9

    if-eqz v9, :cond_17

    if-nez v4, :cond_17

    iget v9, v2, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v9, v0, :cond_17

    .line 291
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v2, p0, v3, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    const/16 p0, 0x80

    .line 292
    invoke-virtual {v2, p0}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 294
    invoke-static {p3, v2, v3, v7}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 295
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object p0

    invoke-virtual {p3, v7, p0}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    return-void

    .line 298
    :cond_16
    iget v0, v2, Lgnu/expr/LambdaExp;->flags:I

    or-int/2addr p0, v0

    iput p0, v2, Lgnu/expr/LambdaExp;->flags:I

    .line 299
    iget-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 300
    iput-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 301
    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 302
    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 303
    invoke-static {p3, v2, v3, v7}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 304
    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 305
    iget-object v0, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 306
    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 307
    invoke-virtual {v2, p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 308
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 309
    iput-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    return-void

    .line 313
    :cond_17
    iget-object v9, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_1d

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v9

    if-nez v9, :cond_18

    instance-of v9, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v9, :cond_1d

    :cond_18
    iget-object v9, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v9}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 317
    sget-object v2, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 318
    new-instance v3, Lgnu/expr/StackTarget;

    sget-object v4, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v3, v4}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v1, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-gt v0, v10, :cond_1a

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 323
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v3, v3, v1

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p1, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 324
    :cond_19
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 325
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v8

    invoke-virtual {v1, v3, v0}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_a

    .line 331
    :cond_1a
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v0, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 332
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 333
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v1, "checkN"

    invoke-virtual {v0, v1, v5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 336
    :goto_a
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 338
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto :goto_b

    .line 340
    :cond_1b
    check-cast p2, Lgnu/expr/ConsumerTarget;

    invoke-virtual {p2}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 342
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    const-string p0, "runUntilDone"

    .line 343
    invoke-virtual {v2, p0, v7}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_b

    .line 347
    :cond_1c
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 348
    invoke-virtual {p2}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    const-string p0, "runUntilValue"

    .line 349
    invoke-virtual {v2, p0, v8}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    :goto_b
    return-void

    :cond_1d
    if-nez v4, :cond_1e

    .line 355
    new-instance v5, Lgnu/expr/StackTarget;

    sget-object v9, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v5, v9}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v1, p1, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :cond_1e
    if-eqz v4, :cond_1f

    .line 357
    iget v1, v2, Lgnu/expr/LambdaExp;->min_args:I

    iget v5, v2, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v1, v5, :cond_20

    goto :goto_c

    :cond_1f
    if-le v0, v10, :cond_20

    goto :goto_c

    :cond_20
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_21

    .line 363
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {p0, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 364
    sget-object p0, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    :goto_d
    move-object v0, v3

    move-object v3, p0

    goto :goto_10

    :cond_21
    if-eqz v4, :cond_22

    .line 368
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, p0

    new-array v0, v0, [I

    .line 369
    invoke-static {v2, p0, v0, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    goto :goto_10

    :cond_22
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_24

    .line 376
    iget-object v5, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v5, v5, v1

    sget-object v9, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p1, v9}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 377
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_f

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 380
    :cond_24
    :goto_f
    sget-object p0, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    aget-object p0, p0, v0

    goto :goto_d

    .line 382
    :goto_10
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, "unreachable code"

    .line 384
    invoke-virtual {p1, v6, p0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    return-void

    :cond_25
    if-eqz v4, :cond_26

    .line 389
    invoke-static {p3, v2, v0, v8}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 390
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object p0

    invoke-virtual {p3, v7, p0}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    return-void

    .line 393
    :cond_26
    invoke-virtual {p3, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 394
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p2, p1, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    return-void
.end method

.method public static compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 4

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 70
    array-length v1, p0

    if-nez v1, :cond_0

    .line 72
    sget-object p0, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    return-void

    .line 75
    :cond_0
    array-length v1, p0

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 76
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    const/4 v1, 0x0

    .line 77
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 79
    aget-object v2, p0, v1

    .line 80
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    instance-of v3, v2, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_1

    .line 91
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 92
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v2, v2}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 94
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 95
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 96
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_1

    .line 100
    :cond_1
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 101
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 102
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 104
    :goto_1
    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .line 541
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_0

    .line 543
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    iget-object v0, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 544
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/32 v1, 0x10000

    .line 545
    invoke-virtual {v0, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 546
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 583
    invoke-static {p0}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 586
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V
    .locals 6

    if-lez p2, :cond_2

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v1, p1, 0x1

    .line 496
    invoke-virtual {p4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {p4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object p2

    if-nez p2, :cond_0

    move-object v5, p5

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object p2

    move-object v5, p2

    :goto_0
    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 498
    invoke-virtual {p4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    .line 500
    aget p1, p3, p1

    const/high16 p2, 0x10000

    if-eq p1, p2, :cond_1

    int-to-short p1, p1

    .line 501
    invoke-virtual {p0, p5, p1}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    goto :goto_1

    .line 503
    :cond_1
    invoke-virtual {p0, p5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V
    .locals 7

    .line 470
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 471
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this"

    if-ne v1, v2, :cond_0

    .line 473
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$ctx"

    if-ne v1, v2, :cond_1

    .line 475
    invoke-virtual {v0}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    :cond_1
    move-object v6, v0

    if-eqz v6, :cond_3

    .line 476
    invoke-virtual {v6}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "argsArray"

    if-ne v0, v1, :cond_3

    if-eqz p3, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    .line 480
    invoke-static/range {v1 .. v6}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    return-void

    .line 483
    :cond_2
    invoke-virtual {v6}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object p3

    move-object v6, p3

    :cond_3
    const/4 v2, 0x0

    .line 485
    iget v3, p1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v1, p0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    return-void
.end method

.method private static pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V
    .locals 5

    .line 450
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p0

    .line 451
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 454
    aget-object v2, p1, v1

    .line 455
    invoke-virtual {p0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 456
    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p3, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 457
    invoke-static {v2, p0}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v3

    aput v3, p2, v1

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 461
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-static {v3}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 463
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    .line 61
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 63
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    :cond_0
    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0, v2, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 2

    .line 399
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0, p1}, Lgnu/expr/ApplyExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    .line 400
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v1, p1}, Lgnu/expr/ApplyExp;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object p1

    if-nez v0, :cond_0

    .line 401
    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    if-nez v1, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-eqz v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 403
    :cond_2
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 404
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFlags()I

    move-result p1

    iput p1, v1, Lgnu/expr/ApplyExp;->flags:I

    return-object v1
.end method

.method public getArg(I)Lgnu/expr/Expression;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getArgCount()I
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    return v0
.end method

.method public final getArgs()[Lgnu/expr/Expression;
    .locals 1

    .line 30
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunction()Lgnu/expr/Expression;
    .locals 1

    .line 29
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunctionValue()Ljava/lang/Object;
    .locals 2

    .line 43
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 2

    .line 553
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_0

    return-object v0

    .line 555
    :cond_0
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 557
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 558
    instance-of v1, v0, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_1

    .line 560
    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 563
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_2

    .line 564
    check-cast v0, Lgnu/mapping/Procedure;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_0

    .line 566
    :cond_1
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_2

    .line 568
    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 570
    :cond_2
    :goto_0
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final getTypeRaw()Lgnu/bytecode/Type;
    .locals 1

    .line 513
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 0

    .line 592
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;
    .locals 4

    .line 603
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    .line 604
    new-array v1, v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 607
    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    .line 608
    instance-of v3, v2, Lgnu/expr/ReferenceExp;

    if-eqz v3, :cond_0

    .line 610
    move-object v3, v2

    check-cast v3, Lgnu/expr/ReferenceExp;

    invoke-virtual {v3}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 613
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 614
    sget-object v3, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v2, v3, :cond_0

    return-object p0

    .line 618
    :cond_0
    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1

    return-object p0

    .line 620
    :cond_1
    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 624
    :cond_2
    :try_start_0
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-virtual {p1, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-direct {v0, v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    const/16 v1, 0x77

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " throws "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    :cond_3
    return-object p0
.end method

.method public final isTailCall()Z
    .locals 1

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Apply"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 427
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " [tailcall]"

    .line 429
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v0, :cond_1

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v0, v2, :cond_1

    const-string v0, " => "

    .line 432
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 435
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 436
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 437
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    const/4 v0, 0x0

    .line 438
    :goto_0
    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 440
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 441
    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public setArg(ILgnu/expr/Expression;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aput-object p2, v0, p1

    return-void
.end method

.method public setArgs([Lgnu/expr/Expression;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public setFunction(Lgnu/expr/Expression;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTailCall(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->setFlag(ZI)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method public side_effects()Z
    .locals 6

    .line 523
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v0}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    .line 524
    instance-of v1, v0, Lgnu/mapping/Procedure;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    check-cast v0, Lgnu/mapping/Procedure;

    invoke-virtual {v0}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 528
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 531
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lgnu/expr/Expression;->side_effects()Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 637
    sget-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne p0, v0, :cond_0

    const-string v0, "ApplyExp[unknownContinuation]"

    return-object v0

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    array-length v1, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 410
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public visitArgs(Lgnu/expr/InlineCalls;)V
    .locals 3

    .line 415
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 421
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v0

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    :cond_0
    return-void
.end method
