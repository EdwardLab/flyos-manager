.class public Lgnu/commonlisp/lang/function;
.super Lkawa/lang/Syntax;
.source "function.java"


# instance fields
.field lambda:Lkawa/lang/Syntax;


# direct methods
.method public constructor <init>(Lkawa/lang/Syntax;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 3

    .line 18
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 19
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_4

    .line 21
    check-cast p1, Lgnu/lists/Pair;

    .line 22
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_0

    const-string p1, "too many forms after \'function\'"

    .line 23
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object p1

    .line 25
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    instance-of v0, p1, Lgnu/lists/Pair;

    if-eqz v0, :cond_4

    .line 34
    check-cast p1, Lgnu/lists/Pair;

    .line 35
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    .line 36
    instance-of v1, v0, Ljava/lang/String;

    const-string v2, "lambda"

    if-eqz v1, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_4

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    :goto_0
    iget-object v0, p0, Lgnu/commonlisp/lang/function;->lambda:Lkawa/lang/Syntax;

    invoke-virtual {v0, p1, p2}, Lkawa/lang/Syntax;->rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 27
    :cond_3
    :goto_1
    new-instance p2, Lgnu/expr/ReferenceExp;

    invoke-direct {p2, p1}, Lgnu/expr/ReferenceExp;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p2, p1}, Lgnu/expr/ReferenceExp;->setProcedureName(Z)V

    const/16 p1, 0x8

    .line 29
    invoke-virtual {p2, p1}, Lgnu/expr/ReferenceExp;->setFlag(I)V

    return-object p2

    :cond_4
    const-string p1, "function must be followed by name or lambda expression"

    .line 42
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
