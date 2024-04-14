.class public Lgnu/commonlisp/lang/UnwindProtect;
.super Lkawa/lang/Syntax;
.source "UnwindProtect.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 2

    .line 11
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_0

    const-string p1, "invalid syntax for unwind-protect"

    .line 12
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1

    .line 13
    :cond_0
    check-cast p1, Lgnu/lists/Pair;

    .line 14
    new-instance v0, Lgnu/expr/TryExp;

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite_body(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lgnu/expr/TryExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    return-object v0
.end method
