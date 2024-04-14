.class public Lgnu/expr/CatchClause;
.super Lgnu/expr/LetExp;
.source "CatchClause.java"


# instance fields
.field next:Lgnu/expr/CatchClause;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 15
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/LambdaExp;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lgnu/expr/CatchClause;-><init>()V

    .line 28
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1, v0}, Lgnu/expr/LambdaExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 30
    invoke-virtual {p0, v0}, Lgnu/expr/CatchClause;->add(Lgnu/expr/Declaration;)V

    .line 31
    iget-object p1, p1, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    iput-object p1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lgnu/expr/CatchClause;-><init>()V

    .line 21
    invoke-virtual {p0, p1, p2}, Lgnu/expr/CatchClause;->addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lgnu/expr/CatchClause;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Lgnu/expr/CatchClause;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 54
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitCatchStart(Lgnu/bytecode/Variable;)V

    .line 55
    iget-object v1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 56
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitCatchEnd()V

    .line 57
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    return-void
.end method

.method protected evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    iget-object p1, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method public final getBody()Lgnu/expr/Expression;
    .locals 1

    .line 37
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getNext()Lgnu/expr/CatchClause;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 3

    .line 67
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    const-string v0, "(Catch"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 68
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 70
    iget-object v0, p0, Lgnu/expr/CatchClause;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v0, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 71
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 72
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 73
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public final setBody(Lgnu/expr/Expression;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-void
.end method

.method public final setNext(Lgnu/expr/CatchClause;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lgnu/expr/CatchClause;->next:Lgnu/expr/CatchClause;

    return-void
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

    .line 62
    iget-object v0, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/CatchClause;->body:Lgnu/expr/Expression;

    return-void
.end method
