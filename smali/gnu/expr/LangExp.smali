.class public Lgnu/expr/LangExp;
.super Lgnu/expr/Expression;
.source "LangExp.java"


# instance fields
.field hook:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "compile called on LangExp"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLangValue()Ljava/lang/Object;
    .locals 1

    .line 13
    iget-object v0, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 1

    const-string v0, "(LangExp ???)"

    .line 24
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    return-void
.end method

.method public setLangValue(Ljava/lang/Object;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lgnu/expr/LangExp;->hook:Ljava/lang/Object;

    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 29
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLangExp(Lgnu/expr/LangExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
