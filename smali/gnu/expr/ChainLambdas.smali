.class public Lgnu/expr/ChainLambdas;
.super Lgnu/expr/ExpExpVisitor;
.source "ChainLambdas.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Lgnu/expr/ScopeExp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    return-void
.end method

.method public static chainLambdas(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1

    .line 13
    new-instance v0, Lgnu/expr/ChainLambdas;

    invoke-direct {v0}, Lgnu/expr/ChainLambdas;-><init>()V

    .line 14
    invoke-virtual {v0, p1}, Lgnu/expr/ChainLambdas;->setContext(Lgnu/expr/Compilation;)V

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p0, p1}, Lgnu/expr/ChainLambdas;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 2

    .line 63
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 64
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_0

    .line 66
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/ClassExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 67
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitClassExp(Lgnu/expr/ClassExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 3

    .line 30
    iget-object v0, p0, Lgnu/expr/ChainLambdas;->currentLambda:Lgnu/expr/LambdaExp;

    if-eqz v0, :cond_0

    .line 31
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_0

    .line 33
    iget-object v1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    iput-object v1, p1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 34
    iput-object p1, v0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 37
    :cond_0
    iput-object p2, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    const/4 p2, 0x0

    .line 38
    iput-object p2, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 39
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p1, p0, p1}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 43
    iget-object v0, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v2, v0

    move-object v0, p2

    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 46
    iget-object v1, p2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    .line 47
    iput-object v0, p2, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    move-object v0, p2

    move-object p2, v1

    goto :goto_0

    .line 51
    :cond_1
    iput-object v0, p1, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .line 53
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz p2, :cond_2

    .line 54
    iget-object p2, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 55
    :cond_2
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 56
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->mustCompile()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 57
    iget-object p2, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->mustCompileHere()V

    :cond_3
    return-object p1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitLambdaExp(Lgnu/expr/LambdaExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;
    .locals 0

    .line 20
    iput-object p2, p1, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 21
    invoke-virtual {p1, p0, p1}, Lgnu/expr/ScopeExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->setIndexes()V

    .line 23
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->mustCompile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lgnu/expr/ChainLambdas;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p2}, Lgnu/expr/Compilation;->mustCompileHere()V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p2, Lgnu/expr/ScopeExp;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ChainLambdas;->visitScopeExp(Lgnu/expr/ScopeExp;Lgnu/expr/ScopeExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
