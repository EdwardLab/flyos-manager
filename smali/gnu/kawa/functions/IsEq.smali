.class public Lgnu/kawa/functions/IsEq;
.super Lgnu/mapping/Procedure2;
.source "IsEq.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 15
    iput-object p1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    .line 16
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEq;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V
    .locals 4

    .line 37
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    aget-object v2, p0, v1

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const/4 v2, 0x1

    .line 39
    aget-object p0, p0, v2

    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p0, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 40
    instance-of p0, p2, Lgnu/expr/ConditionalTarget;

    if-eqz p0, :cond_1

    .line 42
    check-cast p2, Lgnu/expr/ConditionalTarget;

    .line 43
    iget-boolean p0, p2, Lgnu/expr/ConditionalTarget;->trueBranchComesFirst:Z

    if-eqz p0, :cond_0

    .line 44
    iget-object p0, p2, Lgnu/expr/ConditionalTarget;->ifFalse:Lgnu/bytecode/Label;

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitGotoIfNE(Lgnu/bytecode/Label;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p2, Lgnu/expr/ConditionalTarget;->ifTrue:Lgnu/bytecode/Label;

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitGotoIfEq(Lgnu/bytecode/Label;)V

    .line 47
    :goto_0
    invoke-virtual {p2, v0}, Lgnu/expr/ConditionalTarget;->emitGotoFirstBranch(Lgnu/bytecode/CodeAttr;)V

    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 53
    invoke-virtual {p2}, Lgnu/expr/Target;->getType()Lgnu/bytecode/Type;

    move-result-object p0

    instance-of p0, p0, Lgnu/bytecode/ClassType;

    if-eqz p0, :cond_3

    .line 55
    invoke-virtual {p3, v2}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p0

    .line 56
    invoke-virtual {p3, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p3

    .line 57
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 58
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 59
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p3, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 60
    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    instance-of p0, p3, Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    .line 61
    sget-object p0, Lgnu/expr/Compilation;->scmBooleanType:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 63
    :cond_2
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_1

    .line 67
    :cond_3
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 68
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 69
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 70
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 72
    :goto_1
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 73
    invoke-virtual {p2, p1, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1

    .line 31
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p1

    iget-object v0, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    invoke-static {p1, p2, p3, v0}, Lgnu/kawa/functions/IsEq;->compile([Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Language;)V

    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1

    .line 79
    iget-object p1, p0, Lgnu/kawa/functions/IsEq;->language:Lgnu/expr/Language;

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1
.end method
