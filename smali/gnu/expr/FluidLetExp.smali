.class public Lgnu/expr/FluidLetExp;
.super Lgnu/expr/LetExp;
.source "FluidLetExp.java"


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method private doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V
    .locals 9

    .line 62
    iget-object v0, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-virtual {p4}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 65
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v1

    aput-object v1, p3, p2

    .line 66
    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 67
    iget-object v1, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v2, 0x0

    const/4 v3, 0x2

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, v2, v3, p4, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 69
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 70
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 71
    iget-object v1, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    aget-object v1, v1, p2

    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v1, p4, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    invoke-virtual {p1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    add-int/lit8 v5, p2, 0x1

    move-object v3, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    .line 73
    sget-object p1, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string p4, "setWithSave"

    const/4 p5, 0x1

    invoke-virtual {p1, p4, p5}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 75
    aget-object p1, p3, p2

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 12

    .line 21
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 22
    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    .line 26
    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_1

    .line 27
    :cond_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne v1, v3, :cond_2

    .line 28
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_1

    .line 30
    :cond_2
    new-instance v3, Lgnu/expr/StackTarget;

    invoke-direct {v3, v1}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    .line 31
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v4

    .line 32
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 33
    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v0, v5, v2}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v11

    .line 34
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 35
    invoke-virtual {v0, v11}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 36
    iget-object v4, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v4, v4

    new-array v4, v4, [Lgnu/bytecode/Variable;

    .line 38
    invoke-virtual {p0}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    const/4 v8, 0x0

    move-object v6, p0

    move-object v7, v5

    move-object v9, v4

    move-object v10, p1

    .line 39
    invoke-direct/range {v6 .. v11}, Lgnu/expr/FluidLetExp;->doInits(Lgnu/expr/Declaration;I[Lgnu/bytecode/Variable;Lgnu/expr/Compilation;Lgnu/bytecode/Variable;)V

    const/4 v6, 0x1

    .line 40
    invoke-virtual {v0, v6, v1}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 41
    iget-object v7, p0, Lgnu/expr/FluidLetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v7, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    const/4 v3, 0x0

    .line 44
    :goto_2
    iget-object v7, p0, Lgnu/expr/FluidLetExp;->inits:[Lgnu/expr/Expression;

    array-length v7, v7

    if-ge v3, v7, :cond_3

    const/4 v7, 0x2

    .line 46
    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, v2, v7, p1, v8}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 48
    aget-object v7, v4, v3

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 49
    sget-object v7, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v8, "setRestore"

    invoke-virtual {v7, v8, v6}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v7

    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    add-int/lit8 v3, v3, 0x1

    .line 44
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    goto :goto_2

    .line 53
    :cond_3
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    .line 54
    invoke-virtual {p0, v0}, Lgnu/expr/FluidLetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {p2, p1, v1}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :cond_4
    return-void
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 2

    const-string v0, "(FluidLet"

    const-string v1, ")"

    .line 85
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/FluidLetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .line 80
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
