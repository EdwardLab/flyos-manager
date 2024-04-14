.class Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;
.super Lgnu/expr/ExpVisitor;
.source "CompileMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/functions/CompileMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExitThroughFinallyChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpVisitor<",
        "Lgnu/expr/Expression;",
        "Lgnu/expr/TryExp;",
        ">;"
    }
.end annotation


# instance fields
.field decl:Lgnu/expr/Declaration;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 396
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method

.method public static check(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Z
    .locals 1

    .line 403
    new-instance v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;

    invoke-direct {v0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;-><init>()V

    .line 404
    iput-object p0, v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    const/4 p0, 0x0

    .line 405
    invoke-virtual {v0, p1, p0}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object p0, v0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 0

    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p2, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->defaultValue(Lgnu/expr/Expression;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 2

    .line 416
    iget-object v0, p0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->decl:Lgnu/expr/Declaration;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 417
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->exitValue:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p2, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitReferenceExp(Lgnu/expr/ReferenceExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;
    .locals 1

    .line 423
    invoke-virtual {p1}, Lgnu/expr/TryExp;->getFinallyClause()Lgnu/expr/Expression;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method protected bridge synthetic visitTryExp(Lgnu/expr/TryExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 396
    check-cast p2, Lgnu/expr/TryExp;

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/functions/CompileMisc$ExitThroughFinallyChecker;->visitTryExp(Lgnu/expr/TryExp;Lgnu/expr/TryExp;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
