.class public Lgnu/expr/StackTarget;
.super Lgnu/expr/Target;
.source "StackTarget.java"


# instance fields
.field type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    iput-object p1, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method static compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    return v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p0, p1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 37
    :cond_1
    instance-of p0, p1, Lgnu/bytecode/PrimType;

    if-eqz p0, :cond_2

    instance-of p0, p2, Lgnu/bytecode/PrimType;

    if-eqz p0, :cond_2

    .line 39
    invoke-virtual {v1, p1, p2}, Lgnu/bytecode/CodeAttr;->emitConvert(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V

    return v0

    .line 43
    :cond_2
    :goto_0
    instance-of p0, p1, Lgnu/bytecode/ArrayType;

    if-eqz p0, :cond_4

    .line 45
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq p2, p0, :cond_3

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "java.lang.Cloneable"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    return v0

    .line 51
    :cond_4
    invoke-virtual {p2, p1, v1}, Lgnu/bytecode/Type;->emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V

    .line 52
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->topType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 54
    :cond_5
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p0

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lgnu/bytecode/CodeAttr;->castNeeded(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static convert(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)V
    .locals 0

    .line 60
    invoke-static {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-static {p2, p0}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    :cond_0
    return-void
.end method

.method protected static emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 67
    instance-of v1, p0, Lgnu/kawa/reflect/OccurrenceType;

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p0, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 71
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    const-string p0, "gnu.bytecode.Type"

    .line 72
    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    const/4 p1, 0x1

    const-string v1, "coerceFromObject"

    invoke-virtual {p0, v1, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 78
    invoke-virtual {p0, v0}, Lgnu/bytecode/Type;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    :goto_0
    return-void
.end method

.method public static getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    goto :goto_0

    :cond_0
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-ne p0, v0, :cond_1

    sget-object p0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    goto :goto_0

    :cond_1
    new-instance v0, Lgnu/expr/StackTarget;

    invoke-direct {v0, p0}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 0

    .line 84
    invoke-virtual {p0, p1, p2}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 85
    iget-object p2, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {p2, p1}, Lgnu/expr/StackTarget;->emitCoerceFromObject(Lgnu/bytecode/Type;Lgnu/expr/Compilation;)V

    :cond_0
    return-void
.end method

.method protected compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    invoke-static {p1, p2, v0}, Lgnu/expr/StackTarget;->compileFromStack0(Lgnu/expr/Compilation;Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Z

    move-result p1

    return p1
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 13
    iget-object v0, p0, Lgnu/expr/StackTarget;->type:Lgnu/bytecode/Type;

    return-object v0
.end method
