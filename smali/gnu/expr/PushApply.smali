.class public Lgnu/expr/PushApply;
.super Lgnu/expr/ExpVisitor;
.source "PushApply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor<",
        "Lgnu/expr/Expression;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static pushApply(Lgnu/expr/Expression;)V
    .locals 2

    .line 14
    new-instance v0, Lgnu/expr/PushApply;

    invoke-direct {v0}, Lgnu/expr/PushApply;-><init>()V

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, p0, v1}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    return-object p2
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0

    .line 10
    check-cast p2, Lgnu/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4

    .line 30
    iget-object v0, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 31
    instance-of v1, v0, Lgnu/expr/LetExp;

    if-eqz v1, :cond_0

    instance-of v1, v0, Lgnu/expr/FluidLetExp;

    if-nez v1, :cond_0

    .line 35
    check-cast v0, Lgnu/expr/LetExp;

    .line 36
    iget-object v1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 37
    iput-object p1, v0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 38
    iput-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 39
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 41
    :cond_0
    instance-of v1, v0, Lgnu/expr/BeginExp;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lgnu/expr/BeginExp;

    .line 45
    iget-object v1, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 46
    iget-object v2, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 47
    aget-object v3, v1, v2

    iput-object v3, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 48
    aput-object p1, v1, v2

    .line 49
    invoke-virtual {p0, v0, p2}, Lgnu/expr/PushApply;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1

    .line 51
    :cond_1
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ApplyExp;->visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    return-object p1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/PushApply;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
