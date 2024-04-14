.class public Lgnu/expr/ExitExp;
.super Lgnu/expr/Expression;
.source "ExitExp.java"


# instance fields
.field block:Lgnu/expr/BlockExp;

.field result:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/BlockExp;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 26
    sget-object v0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    iput-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 27
    iput-object p1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 20
    iput-object p1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    .line 21
    iput-object p2, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

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

    .line 34
    new-instance v0, Lgnu/expr/BlockExitException;

    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lgnu/expr/BlockExitException;-><init>(Lgnu/expr/ExitExp;Ljava/lang/Object;)V

    throw v0
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    .line 40
    iget-object p2, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-nez p2, :cond_0

    sget-object p2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    .line 41
    :cond_0
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v0, v0, Lgnu/expr/BlockExp;->exitTarget:Lgnu/expr/Target;

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 42
    iget-object p1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object p1, p1, Lgnu/expr/BlockExp;->exitableBlock:Lgnu/bytecode/ExitableBlock;

    invoke-virtual {p1}, Lgnu/bytecode/ExitableBlock;->exit()V

    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 2

    .line 47
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-static {v0, p1}, Lgnu/expr/ExitExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    iget-object v1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    invoke-virtual {p1, v1}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    new-instance v1, Lgnu/expr/ExitExp;

    if-nez p1, :cond_1

    iget-object p1, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    goto :goto_0

    :cond_1
    check-cast p1, Lgnu/expr/BlockExp;

    :goto_0
    invoke-direct {v1, v0, p1}, Lgnu/expr/ExitExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/BlockExp;)V

    .line 53
    invoke-virtual {p0}, Lgnu/expr/ExitExp;->getFlags()I

    move-result p1

    iput p1, v1, Lgnu/expr/ExitExp;->flags:I

    return-object v1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 85
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    const-string v0, "(Exit"

    const/4 v1, 0x0

    const-string v2, ")"

    .line 69
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 71
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lgnu/expr/ExitExp;->block:Lgnu/expr/BlockExp;

    iget-object v0, v0, Lgnu/expr/BlockExp;->label:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "<unknown>"

    .line 72
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 75
    :goto_1
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 78
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 80
    :cond_2
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

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

    .line 59
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitExitExp(Lgnu/expr/ExitExp;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 64
    iget-object v0, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/ExitExp;->result:Lgnu/expr/Expression;

    return-void
.end method
