.class public Lgnu/expr/IgnoreTarget;
.super Lgnu/expr/Target;
.source "IgnoreTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 0

    .line 11
    invoke-virtual {p2}, Lgnu/bytecode/Type;->isVoid()Z

    move-result p2

    if-nez p2, :cond_0

    .line 12
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    :cond_0
    return-void
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 7
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
