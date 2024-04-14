.class public Lgnu/expr/TryExp;
.super Lgnu/expr/Expression;
.source "TryExp.java"


# instance fields
.field catch_clauses:Lgnu/expr/CatchClause;

.field finally_clause:Lgnu/expr/Expression;

.field try_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 27
    iput-object p1, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 28
    iput-object p2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    :try_start_0
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 38
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->runUntilDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    iget-object v1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    :goto_0
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {v1}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getTypeExp()Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 47
    invoke-virtual {v2, v0}, Lgnu/bytecode/ClassType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    iput-object v0, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 50
    invoke-virtual {v1, p1}, Lgnu/expr/CatchClause;->apply(Lgnu/mapping/CallContext;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 43
    :cond_2
    :try_start_2
    iget-object v1, v1, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    goto :goto_0

    .line 54
    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 58
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_4

    .line 59
    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    :cond_4
    throw v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    instance-of v3, p2, Lgnu/expr/StackTarget;

    if-nez v3, :cond_2

    instance-of v3, p2, Lgnu/expr/ConsumerTarget;

    if-nez v3, :cond_2

    instance-of v3, p2, Lgnu/expr/IgnoreTarget;

    if-nez v3, :cond_2

    instance-of v3, p2, Lgnu/expr/ConditionalTarget;

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, p2

    .line 74
    :goto_2
    instance-of v3, v1, Lgnu/expr/StackTarget;

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/CodeAttr;->emitTryStart(ZLgnu/bytecode/Type;)V

    .line 76
    iget-object v2, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v2, p1, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 77
    iget-object v2, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    :goto_4
    if-eqz v2, :cond_4

    .line 80
    invoke-virtual {v2, p1, v1}, Lgnu/expr/CatchClause;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 78
    invoke-virtual {v2}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v2

    goto :goto_4

    .line 83
    :cond_4
    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v2, :cond_5

    .line 85
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyStart()V

    .line 86
    iget-object v2, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 87
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFinallyEnd()V

    .line 89
    :cond_5
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitTryCatchEnd()V

    if-eq v1, p2, :cond_6

    .line 91
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :cond_6
    return-void
.end method

.method public final getCatchClauses()Lgnu/expr/CatchClause;
    .locals 1

    .line 18
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method public final getFinallyClause()Lgnu/expr/Expression;
    .locals 1

    .line 19
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 115
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-super {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Try"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 123
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 125
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 126
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    :goto_0
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lgnu/expr/CatchClause;->print(Lgnu/mapping/OutPort;)V

    .line 127
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    const-string v0, " finally: "

    .line 134
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 137
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public final setCatchClauses(Lgnu/expr/CatchClause;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

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

    .line 96
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 101
    iget-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/TryExp;->try_clause:Lgnu/expr/Expression;

    .line 102
    iget-object v0, p0, Lgnu/expr/TryExp;->catch_clauses:Lgnu/expr/CatchClause;

    .line 103
    :goto_0
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Lgnu/expr/CatchClause;->getNext()Lgnu/expr/CatchClause;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/TryExp;->finally_clause:Lgnu/expr/Expression;

    :cond_1
    return-void
.end method
