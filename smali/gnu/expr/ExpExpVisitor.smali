.class public abstract Lgnu/expr/ExpExpVisitor;
.super Lgnu/expr/ExpVisitor;
.source "ExpExpVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/expr/ExpVisitor<",
        "Lgnu/expr/Expression;",
        "TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/expr/ExpVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/Expression;",
            "TD;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    return-object p1
.end method

.method protected bridge synthetic defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->defaultValue(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    return-object p2
.end method

.method protected bridge synthetic update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;
    .locals 0

    .line 8
    check-cast p2, Lgnu/expr/Expression;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->update(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
