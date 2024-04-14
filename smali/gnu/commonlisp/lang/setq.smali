.class public Lgnu/commonlisp/lang/setq;
.super Lkawa/lang/Syntax;
.source "setq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 4

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq p1, v1, :cond_7

    .line 21
    instance-of v1, p1, Lgnu/lists/Pair;

    if-nez v1, :cond_0

    const-string p1, "invalid syntax for setq"

    .line 22
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .line 24
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 26
    instance-of v2, v1, Lgnu/mapping/Symbol;

    if-nez v2, :cond_3

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 28
    :cond_1
    sget-object v2, Lgnu/commonlisp/lang/CommonLisp;->FALSE:Lgnu/lists/LList;

    if-ne v1, v2, :cond_2

    const-string v1, "nil"

    goto :goto_1

    :cond_2
    const-string p1, "invalid variable name in setq"

    .line 31
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 32
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 33
    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_4

    const-string p1, "wrong number of arguments for setq"

    .line 34
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 35
    :cond_4
    check-cast p1, Lgnu/lists/Pair;

    .line 36
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 38
    new-instance v3, Lgnu/expr/SetExp;

    invoke-direct {v3, v1, v2}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    const/16 v1, 0x8

    .line 39
    invoke-virtual {v3, v1}, Lgnu/expr/SetExp;->setFlag(I)V

    .line 40
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v1, :cond_5

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v3, v1}, Lgnu/expr/SetExp;->setHasValue(Z)V

    if-nez v0, :cond_5

    return-object v3

    :cond_5
    if-nez v0, :cond_6

    .line 47
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 48
    :cond_6
    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    if-nez v0, :cond_8

    .line 51
    sget-object p1, Lgnu/commonlisp/lang/CommonLisp;->nilExpr:Lgnu/expr/Expression;

    return-object p1

    .line 52
    :cond_8
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lgnu/expr/Expression;

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 54
    new-instance p2, Lgnu/expr/BeginExp;

    invoke-direct {p2, p1}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object p2
.end method
