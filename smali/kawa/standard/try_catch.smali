.class public Lkawa/standard/try_catch;
.super Ljava/lang/Object;
.source "try_catch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewrite(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 8

    .line 14
    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    check-cast v0, Lkawa/lang/Translator;

    .line 15
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    .line 18
    check-cast p1, Lgnu/lists/FVector;

    .line 19
    invoke-virtual {p1}, Lgnu/lists/FVector;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    :goto_0
    if-ge v3, v1, :cond_3

    .line 22
    sget-object v6, Lkawa/standard/SchemeCompilation;->lambda:Lkawa/lang/Lambda;

    invoke-virtual {p1, v3}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lkawa/lang/Lambda;->rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v6

    .line 23
    instance-of v7, v6, Lgnu/expr/ErrorExp;

    if-eqz v7, :cond_0

    return-object v6

    .line 25
    :cond_0
    instance-of v7, v6, Lgnu/expr/LambdaExp;

    if-nez v7, :cond_1

    const-string p0, "internal error with try-catch"

    .line 26
    invoke-virtual {v0, p0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 27
    :cond_1
    new-instance v7, Lgnu/expr/CatchClause;

    check-cast v6, Lgnu/expr/LambdaExp;

    invoke-direct {v7, v6}, Lgnu/expr/CatchClause;-><init>(Lgnu/expr/LambdaExp;)V

    if-nez v5, :cond_2

    move-object v4, v7

    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {v5, v7}, Lgnu/expr/CatchClause;->setNext(Lgnu/expr/CatchClause;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v7

    goto :goto_0

    .line 34
    :cond_3
    instance-of p1, p0, Lgnu/expr/ErrorExp;

    if-eqz p1, :cond_4

    return-object p0

    .line 36
    :cond_4
    new-instance p1, Lgnu/expr/TryExp;

    invoke-direct {p1, p0, v2}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    .line 37
    invoke-virtual {p1, v4}, Lgnu/expr/TryExp;->setCatchClauses(Lgnu/expr/CatchClause;)V

    return-object p1
.end method
