.class public Lkawa/standard/constant_fold;
.super Lkawa/lang/Syntax;
.source "constant_fold.java"


# static fields
.field public static final constant_fold:Lkawa/standard/constant_fold;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lkawa/standard/constant_fold;

    invoke-direct {v0}, Lkawa/standard/constant_fold;-><init>()V

    sput-object v0, Lkawa/standard/constant_fold;->constant_fold:Lkawa/standard/constant_fold;

    const-string v1, "constant-fold"

    .line 11
    invoke-virtual {v0, v1}, Lkawa/standard/constant_fold;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method static checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;
    .locals 3

    .line 15
    instance-of p1, p0, Lgnu/expr/QuoteExp;

    if-eqz p1, :cond_0

    .line 16
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    instance-of p1, p0, Lgnu/expr/ReferenceExp;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 19
    check-cast p0, Lgnu/expr/ReferenceExp;

    .line 20
    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p1

    if-eqz p1, :cond_2

    const-wide/32 v1, 0x10000

    .line 21
    invoke-virtual {p1, v1, v2}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object p0

    invoke-virtual {p0}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 22
    :cond_2
    :goto_0
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object p1

    invoke-virtual {p0}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5

    .line 31
    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    .line 32
    instance-of v0, p1, Lgnu/expr/ApplyExp;

    if-nez v0, :cond_0

    return-object p1

    .line 34
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/expr/ApplyExp;

    .line 35
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v1

    invoke-static {v1, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-nez v2, :cond_1

    return-object p1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 44
    array-length v2, v0

    .line 45
    new-array v3, v2, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 48
    aget-object v4, v0, v2

    invoke-static {v4, p2}, Lkawa/standard/constant_fold;->checkConstant(Lgnu/expr/Expression;Lkawa/lang/Translator;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    return-object p1

    .line 51
    :cond_2
    aput-object v4, v3, v2

    goto :goto_0

    .line 55
    :cond_3
    :try_start_0
    new-instance p1, Lgnu/expr/QuoteExp;

    check-cast v1, Lgnu/mapping/Procedure;

    invoke-virtual {v1, v3}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "caught exception in constant-fold:"

    .line 59
    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return-object v0
.end method
