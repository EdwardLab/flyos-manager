.class public Lgnu/expr/IfExp;
.super Lgnu/expr/Expression;
.source "IfExp.java"


# instance fields
.field else_clause:Lgnu/expr/Expression;

.field test:Lgnu/expr/Expression;

.field then_clause:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iput-object p3, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    return-void
.end method

.method public static compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 61
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 62
    invoke-virtual {p3}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 68
    instance-of v2, p4, Lgnu/expr/ConditionalTarget;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    instance-of v5, p2, Lgnu/expr/QuoteExp;

    if-eqz v5, :cond_1

    .line 72
    move-object v5, p2

    check-cast v5, Lgnu/expr/QuoteExp;

    invoke-virtual {v5}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 73
    invoke-virtual {v0, v5}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    move-object v5, p4

    check-cast v5, Lgnu/expr/ConditionalTarget;

    iget-object v5, v5, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_0

    .line 76
    :cond_0
    move-object v5, p4

    check-cast v5, Lgnu/expr/ConditionalTarget;

    iget-object v5, v5, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    :goto_0
    const/4 v6, 0x1

    goto :goto_1

    .line 78
    :cond_1
    instance-of v5, p2, Lgnu/expr/ExitExp;

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Lgnu/expr/ExitExp;

    iget-object v6, v5, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    instance-of v6, v6, Lgnu/expr/QuoteExp;

    if-eqz v6, :cond_2

    iget-object v5, v5, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v6, v5, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    instance-of v6, v6, Lgnu/expr/IgnoreTarget;

    if-eqz v6, :cond_2

    iget-object v5, v5, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {v5}, Lgnu/bytecode/ExitableBlock;->exitIsGoto()Lgnu/bytecode/Label;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-nez v5, :cond_4

    .line 89
    new-instance v5, Lgnu/bytecode/Label;

    invoke-direct {v5, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    :cond_4
    if-ne p0, p1, :cond_5

    if-eqz v2, :cond_5

    .line 94
    instance-of v2, p1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_5

    .line 98
    move-object v2, p4

    check-cast v2, Lgnu/expr/ConditionalTarget;

    iget-object v2, v2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_2

    .line 103
    :cond_5
    new-instance v2, Lgnu/bytecode/Label;

    invoke-direct {v2, v1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    const/4 v3, 0x0

    .line 105
    :goto_2
    new-instance v7, Lgnu/expr/ConditionalTarget;

    invoke-direct {v7, v2, v5, v0}, Lgnu/expr/ConditionalTarget;-><init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V

    if-eqz v3, :cond_6

    .line 108
    iput-boolean v4, v7, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 109
    :cond_6
    invoke-virtual {p0, p3, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 110
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitIfThen()V

    if-nez v3, :cond_7

    .line 113
    invoke-virtual {v2, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 117
    iget-object p0, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 118
    invoke-virtual {p1, p3, p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 119
    iput-object p0, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    :cond_7
    if-nez v6, :cond_9

    .line 123
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 124
    invoke-virtual {v5, v1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 126
    iget-object p0, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    if-nez p2, :cond_8

    .line 128
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p3, p1, p4}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    goto :goto_3

    .line 130
    :cond_8
    invoke-virtual {p2, p3, p4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 131
    :goto_3
    iput-object p0, p3, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    goto :goto_4

    .line 134
    :cond_9
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 135
    :goto_4
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitFi()V

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

    .line 37
    invoke-virtual {p0}, Lgnu/expr/IfExp;->getLanguage()Lgnu/expr/Language;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->isTrue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    iget-object v2, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v2, :cond_0

    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :cond_0
    invoke-static {v0, v1, v2, p1, p2}, Lgnu/expr/IfExp;->compile(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public getElseClause()Lgnu/expr/Expression;
    .locals 1

    .line 26
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .locals 1

    .line 30
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    return-object v0
.end method

.method public getTest()Lgnu/expr/Expression;
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getThenClause()Lgnu/expr/Expression;
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .line 154
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez v1, :cond_0

    sget-object v1, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 156
    :goto_0
    invoke-static {v0, v1}, Lgnu/expr/Language;->unionType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

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

    const-string v0, "(If "

    const/4 v1, 0x0

    const-string v2, ")"

    .line 161
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, -0x2

    .line 162
    invoke-virtual {p1, v0, v1}, Lgnu/mapping/OutPort;->setIndentation(IZ)V

    .line 163
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 164
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 165
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 166
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 169
    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 171
    :cond_0
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method select(Z)Lgnu/expr/Expression;
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-nez p1, :cond_1

    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    :cond_1
    :goto_0
    return-object p1
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

    .line 140
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitIfExp(Lgnu/expr/IfExp;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 145
    iget-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->test:Lgnu/expr/Expression;

    .line 146
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/IfExp;->then_clause:Lgnu/expr/Expression;

    .line 148
    :cond_0
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/IfExp;->else_clause:Lgnu/expr/Expression;

    :cond_1
    return-void
.end method
