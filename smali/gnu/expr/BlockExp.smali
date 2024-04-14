.class public Lgnu/expr/BlockExp;
.super Lgnu/expr/Expression;
.source "BlockExp.java"


# instance fields
.field body:Lgnu/expr/Expression;

.field exitBody:Lgnu/expr/Expression;

.field exitTarget:Lgnu/expr/Target;

.field exitableBlock:Lgnu/bytecode/ExitableBlock;

.field label:Lgnu/expr/Declaration;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 50
    :try_start_0
    iget-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lgnu/expr/BlockExitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    iget-object v1, v0, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v1, v1, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-ne v1, p0, :cond_1

    .line 56
    iget-object v0, v0, Lgnu/expr/BlockExitException;->exit:Lgnu/expr/ExitExp;

    iget-object v0, v0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 57
    iget-object v1, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void

    .line 55
    :cond_1
    throw v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 65
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    instance-of v1, p2, Lgnu/expr/StackTarget;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 70
    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/CodeAttr;->startExitableBlock(Lgnu/bytecode/Type;Z)Lgnu/bytecode/ExitableBlock;

    move-result-object v1

    .line 71
    iput-object v1, p0, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    .line 72
    iget-object v1, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-nez v1, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    sget-object v1, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    :goto_1
    iput-object v1, p0, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    .line 73
    iget-object v1, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 74
    iget-object v1, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Lgnu/bytecode/Label;

    invoke-direct {v1, v0}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 77
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 78
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 79
    iget-object v3, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v3, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 80
    invoke-virtual {v1, v0}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    goto :goto_2

    .line 83
    :cond_2
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->endExitableBlock()V

    .line 84
    :goto_2
    iput-object v2, p0, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    return-void
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Block"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 101
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 104
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(C)V

    .line 105
    iget-object v0, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 108
    iget-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 109
    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    const-string v0, "else "

    .line 112
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 115
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public setBody(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 30
    iput-object p2, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    return-void
.end method

.method public setLabel(Lgnu/expr/Declaration;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

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

    .line 89
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitBlockExp(Lgnu/expr/BlockExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 1
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

    .line 94
    iget-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/BlockExp;->body:Lgnu/expr/Expression;

    .line 95
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/BlockExp;->exitBody:Lgnu/expr/Expression;

    :cond_0
    return-void
.end method
