.class Lgnu/kawa/functions/CompileTimeContinuation;
.super Lgnu/mapping/ProcedureN;
.source "CallCC.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field blockTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    new-instance p1, Ljava/lang/Error;

    const-string v0, "internal error"

    invoke-direct {p1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5

    .line 102
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    .line 103
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    .line 104
    array-length v0, p1

    .line 105
    iget-object v1, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    instance-of v2, v1, Lgnu/expr/IgnoreTarget;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    instance-of v1, v1, Lgnu/expr/ConsumerTarget;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {p3}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    :goto_2
    if-nez v1, :cond_4

    if-ne v0, v4, :cond_3

    goto :goto_3

    .line 115
    :cond_3
    sget-object p3, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    .line 116
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, p3, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    iget-object p1, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {p3, v0, p2, p1}, Lgnu/kawa/functions/AppendValues;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_4

    :cond_4
    :goto_3
    if-ge v3, v0, :cond_5

    .line 111
    aget-object p3, p1, v3

    iget-object v1, p0, Lgnu/kawa/functions/CompileTimeContinuation;->blockTarget:Lgnu/expr/Target;

    invoke-virtual {p3, p2, v1}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 118
    :cond_5
    :goto_4
    iget-object p1, p0, Lgnu/kawa/functions/CompileTimeContinuation;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {p1}, Lgnu/bytecode/ExitableBlock;->exit()V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 123
    sget-object p1, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object p1
.end method
