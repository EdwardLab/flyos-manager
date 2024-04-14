.class public Lgnu/commonlisp/lang/defun;
.super Lkawa/lang/Syntax;
.source "defun.java"


# instance fields
.field lambdaSyntax:Lkawa/lang/Lambda;


# direct methods
.method public constructor <init>(Lkawa/lang/Lambda;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 18
    iput-object p1, p0, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 10

    .line 49
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_6

    .line 56
    check-cast p1, Lgnu/lists/Pair;

    .line 57
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lgnu/mapping/Symbol;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    instance-of v1, v0, Lgnu/expr/Declaration;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Lgnu/expr/Declaration;

    .line 66
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v0, v2

    move-object v1, v0

    goto :goto_1

    .line 61
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 68
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_6

    .line 70
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 71
    new-instance v9, Lgnu/expr/LambdaExp;

    invoke-direct {v9}, Lgnu/expr/LambdaExp;-><init>()V

    .line 72
    iget-object v3, p0, Lgnu/commonlisp/lang/defun;->lambdaSyntax:Lkawa/lang/Lambda;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, v9

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Lkawa/lang/Lambda;->rewrite(Lgnu/expr/LambdaExp;Ljava/lang/Object;Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)V

    .line 73
    invoke-virtual {v9, v1}, Lgnu/expr/LambdaExp;->setSymbol(Ljava/lang/Object;)V

    .line 74
    instance-of p2, p1, Lgnu/lists/PairWithPosition;

    if-eqz p2, :cond_3

    .line 75
    check-cast p1, Lgnu/lists/PairWithPosition;

    invoke-virtual {v9, p1}, Lgnu/expr/LambdaExp;->setLocation(Lgnu/text/SourceLocator;)V

    .line 77
    :cond_3
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v1, v9}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 79
    invoke-virtual {p1, p2}, Lgnu/expr/SetExp;->setFuncDef(Z)V

    if-eqz v0, :cond_5

    .line 82
    invoke-virtual {p1, v0}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 83
    iget-object p2, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of p2, p2, Lgnu/expr/ModuleExp;

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v9

    .line 85
    :goto_2
    invoke-virtual {v0, v2}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_5
    return-object p1

    .line 90
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/commonlisp/lang/defun;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7

    .line 25
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-nez v1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 30
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 33
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 35
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x77

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "duplicate declaration for `"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v4, v1}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 40
    :goto_0
    instance-of p3, p3, Lgnu/expr/ModuleExp;

    if-eqz p3, :cond_2

    .line 41
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 42
    :cond_2
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, v2, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    invoke-static {p1, p0, p3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 43
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v3

    .line 28
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1
.end method
