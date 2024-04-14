.class public Lgnu/commonlisp/lang/defvar;
.super Lkawa/lang/Syntax;
.source "defvar.java"


# instance fields
.field force:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 14
    iput-boolean p1, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .line 49
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 54
    instance-of v0, p1, Lgnu/lists/Pair;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 56
    check-cast p1, Lgnu/lists/Pair;

    .line 57
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/expr/Declaration;

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Declaration;

    .line 60
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    .line 61
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/lists/Pair;

    .line 64
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v3, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v2, v0

    :goto_0
    move-object v3, v2

    :goto_1
    if-nez v2, :cond_3

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid syntax for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/commonlisp/lang/defvar;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v3, :cond_5

    .line 78
    iget-boolean p1, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    if-eqz p1, :cond_4

    .line 79
    sget-object v3, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    goto :goto_2

    .line 81
    :cond_4
    new-instance p1, Lgnu/expr/QuoteExp;

    invoke-direct {p1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 83
    :cond_5
    :goto_2
    new-instance p1, Lgnu/expr/SetExp;

    invoke-direct {p1, v2, v3}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    .line 84
    iget-boolean p2, p0, Lgnu/commonlisp/lang/defvar;->force:Z

    const/4 v2, 0x1

    if-nez p2, :cond_6

    .line 85
    invoke-virtual {p1, v2}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 86
    :cond_6
    invoke-virtual {p1, v2}, Lgnu/expr/SetExp;->setDefining(Z)V

    if-eqz v0, :cond_8

    .line 89
    invoke-virtual {p1, v0}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 90
    iget-object p2, v0, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of p2, p2, Lgnu/expr/ModuleExp;

    if-eqz p2, :cond_7

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move-object v1, v3

    .line 93
    :goto_3
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_8
    return-object p1
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7

    .line 20
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result p1

    return p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 23
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 24
    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_3

    .line 26
    :cond_1
    invoke-virtual {p3, v1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    if-nez v2, :cond_2

    .line 29
    new-instance v2, Lgnu/expr/Declaration;

    invoke-direct {v2, v1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    const-wide/32 v4, 0x10000000

    .line 30
    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x77

    .line 34
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

    .line 35
    :goto_0
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p4

    invoke-static {v0, v2, p4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p4

    .line 36
    invoke-static {p1, p0, p4}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 37
    instance-of p3, p3, Lgnu/expr/ModuleExp;

    if-eqz p3, :cond_3

    .line 39
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 40
    invoke-virtual {v2, v3}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 43
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return v3
.end method
