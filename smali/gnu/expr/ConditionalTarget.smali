.class public Lgnu/expr/ConditionalTarget;
.super Lgnu/expr/Target;
.source "ConditionalTarget.java"


# instance fields
.field public ifFalse:Lgnu/bytecode/Label;

.field public ifTrue:Lgnu/bytecode/Label;

.field language:Lgnu/expr/Language;

.field public trueBranchComesFirst:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Label;Lgnu/bytecode/Label;Lgnu/expr/Language;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    .line 22
    iput-object p1, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    .line 23
    iput-object p2, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    .line 24
    iput-object p3, p0, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    return-void
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 3

    .line 36
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 37
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x44

    if-eq p2, v2, :cond_5

    const/16 v2, 0x46

    if-eq p2, v2, :cond_4

    const/16 v2, 0x4a

    if-eq p2, v2, :cond_3

    const/16 v2, 0x4c

    if-eq p2, v2, :cond_1

    const/16 v2, 0x5b

    if-eq p2, v2, :cond_1

    .line 50
    iget-boolean p1, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntEqZero(Lgnu/bytecode/Label;)V

    .line 53
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGotoIfIntNeZero(Lgnu/bytecode/Label;)V

    .line 58
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object p2, p0, Lgnu/expr/ConditionalTarget;->language:Lgnu/expr/Language;

    if-nez p2, :cond_2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-wide/16 p1, 0x0

    .line 41
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitPushLong(J)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 47
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitPushFloat(F)V

    goto :goto_2

    :cond_5
    const-wide/16 p1, 0x0

    .line 44
    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/CodeAttr;->emitPushDouble(D)V

    .line 66
    :goto_2
    iget-boolean p1, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz p1, :cond_6

    .line 67
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    goto :goto_3

    .line 69
    :cond_6
    iget-object p1, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    .line 70
    :goto_3
    invoke-virtual {p0, v0}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method public final emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    :goto_0
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    return-void
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 32
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
