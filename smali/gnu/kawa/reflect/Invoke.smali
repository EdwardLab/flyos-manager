.class public Lgnu/kawa/reflect/Invoke;
.super Lgnu/mapping/ProcedureN;
.source "Invoke.java"


# static fields
.field public static final invoke:Lgnu/kawa/reflect/Invoke;

.field public static final invokeSpecial:Lgnu/kawa/reflect/Invoke;

.field public static final invokeStatic:Lgnu/kawa/reflect/Invoke;

.field public static final make:Lgnu/kawa/reflect/Invoke;


# instance fields
.field kind:C

.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    .line 29
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-static"

    const/16 v2, 0x53

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    .line 30
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "invoke-special"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    .line 31
    new-instance v0, Lgnu/kawa/reflect/Invoke;

    const-string v1, "make"

    const/16 v2, 0x4e

    invoke-direct {v0, v1, v2}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;C)V

    sput-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 1

    .line 35
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lgnu/kawa/reflect/Invoke;-><init>(Ljava/lang/String;CLgnu/expr/Language;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CLgnu/expr/Language;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 41
    iput-char p2, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    .line 42
    iput-object p3, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    .line 43
    sget-object p1, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string p2, "gnu.kawa.reflect.CompileInvoke:validateApplyInvoke"

    invoke-virtual {p0, p1, p2}, Lgnu/kawa/reflect/Invoke;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static declared-synchronized getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;
    .locals 1

    const-class v0, Lgnu/kawa/reflect/Invoke;

    monitor-enter v0

    .line 310
    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/CompileInvoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static invoke$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invoke:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeStatic$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 54
    sget-object v0, Lgnu/kawa/reflect/Invoke;->invokeStatic:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static make$V([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 59
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v0, p0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;
    .locals 3

    const-class v0, Lgnu/kawa/reflect/Invoke;

    monitor-enter v0

    .line 299
    :try_start_0
    invoke-static {p0, p1, p2}, Lgnu/kawa/reflect/Invoke;->getStaticMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/PrimProcedure;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    new-instance p0, Lgnu/expr/ApplyExp;

    invoke-direct {p0, v1, p2}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 301
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing or ambiguous method `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;
    .locals 3

    .line 64
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Ljava/lang/Class;

    invoke-static {p0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p0

    .line 66
    :cond_0
    instance-of v0, p0, Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_1

    .line 67
    check-cast p0, Lgnu/bytecode/ObjectType;

    return-object p0

    .line 68
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/lists/FString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_3

    .line 71
    check-cast p0, Lgnu/mapping/Symbol;

    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0

    .line 72
    :cond_3
    instance-of v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v0, :cond_4

    .line 73
    check-cast p0, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0

    .line 74
    :cond_4
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x0

    const-string v2, "class-specifier"

    invoke-direct {v0, p1, v1, p0, v2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    .line 80
    iget-char v1, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v2, 0x2a

    const/16 v3, 0x73

    const/16 v4, 0x56

    const/16 v5, 0x53

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 84
    :cond_1
    :goto_0
    array-length v1, v0

    .line 85
    invoke-static {p0, v1}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    const/4 v6, 0x0

    .line 86
    aget-object v7, v0, v6

    .line 87
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-eq v8, v5, :cond_3

    if-ne v8, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v7, p0}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v3

    :goto_2
    check-cast v3, Lgnu/bytecode/ObjectType;

    move-object v7, v3

    check-cast v7, Lgnu/bytecode/ObjectType;

    const/4 v7, 0x1

    .line 90
    aget-object v8, v0, v7

    invoke-virtual {p0, v3, v8}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v3

    .line 91
    iget-char v8, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/4 v9, 0x2

    if-ne v8, v5, :cond_4

    const/4 v5, 0x2

    goto :goto_3

    :cond_4
    const/4 v5, 0x1

    :goto_3
    sub-int v5, v1, v5

    new-array v5, v5, [Ljava/lang/Object;

    if-eq v8, v4, :cond_5

    if-ne v8, v2, :cond_6

    .line 94
    :cond_5
    aget-object v2, v0, v6

    aput-object v2, v5, v6

    const/4 v6, 0x1

    :cond_6
    sub-int/2addr v1, v9

    .line 95
    invoke-static {v0, v9, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-virtual {v3, v5, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    :goto_4
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x50

    if-eq v0, v1, :cond_18

    .line 108
    array-length v0, p1

    .line 109
    invoke-static {p0, v0}, Lgnu/mapping/Procedure;->checkArgCount(Lgnu/mapping/Procedure;I)V

    const/4 v1, 0x0

    .line 110
    aget-object v2, p1, v1

    .line 111
    iget-char v3, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v4, 0x2a

    const/16 v5, 0x56

    if-eq v3, v5, :cond_0

    if-eq v3, v4, :cond_0

    invoke-static {v2, p0}, Lgnu/kawa/reflect/Invoke;->typeFrom(Ljava/lang/Object;Lgnu/kawa/reflect/Invoke;)Lgnu/bytecode/ObjectType;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ObjectType;

    .line 114
    :goto_0
    iget-char v3, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/4 v6, -0x1

    const/16 v7, 0x4e

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v3, v7, :cond_7

    const/4 v3, 0x0

    .line 117
    instance-of v10, v2, Lgnu/expr/TypeValue;

    if-eqz v10, :cond_1

    .line 119
    move-object v10, v2

    check-cast v10, Lgnu/expr/TypeValue;

    invoke-interface {v10}, Lgnu/expr/TypeValue;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v10

    if-eqz v10, :cond_1

    add-int/2addr v0, v6

    .line 123
    new-array v2, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {p1, v9, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {v10, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    instance-of v10, v2, Lgnu/expr/PairClassType;

    if-eqz v10, :cond_2

    .line 130
    check-cast v2, Lgnu/expr/PairClassType;

    .line 131
    iget-object v2, v2, Lgnu/expr/PairClassType;->instanceType:Lgnu/bytecode/ClassType;

    .line 133
    :cond_2
    instance-of v10, v2, Lgnu/bytecode/ArrayType;

    if-eqz v10, :cond_8

    .line 135
    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v2}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 137
    array-length v2, p1

    sub-int/2addr v2, v9

    if-lt v2, v8, :cond_4

    .line 142
    aget-object v3, p1, v9

    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_4

    check-cast v3, Lgnu/expr/Keyword;

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 146
    :cond_3
    aget-object v3, p1, v8

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 156
    :goto_1
    invoke-virtual {v0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    if-gt v4, v2, :cond_6

    .line 161
    aget-object v6, p1, v4

    if-eqz v5, :cond_5

    .line 162
    instance-of v7, v6, Lgnu/expr/Keyword;

    if-eqz v7, :cond_5

    if-ge v4, v2, :cond_5

    .line 164
    check-cast v6, Lgnu/expr/Keyword;

    invoke-virtual {v6}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    .line 173
    aget-object v6, p1, v4

    goto :goto_3

    .line 171
    :catchall_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-integer keyword \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' in array constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_5
    :goto_3
    invoke-virtual {v0, v6}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v1, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/2addr v1, v9

    add-int/2addr v4, v9

    goto :goto_2

    :cond_6
    return-object v3

    .line 183
    :cond_7
    aget-object v3, p1, v9

    .line 185
    :cond_8
    invoke-virtual {p0, v2, v3}, Lgnu/kawa/reflect/Invoke;->lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;

    move-result-object v3

    .line 186
    iget-char v10, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    if-eq v10, v7, :cond_d

    const/16 v2, 0x53

    if-eq v10, v2, :cond_a

    const/16 v2, 0x73

    if-ne v10, v2, :cond_9

    goto :goto_4

    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v2, 0x2

    :goto_5
    sub-int v2, v0, v2

    .line 188
    new-array v2, v2, [Ljava/lang/Object;

    if-eq v10, v5, :cond_b

    if-ne v10, v4, :cond_c

    .line 191
    :cond_b
    aget-object v4, p1, v1

    aput-object v4, v2, v1

    const/4 v1, 0x1

    :cond_c
    sub-int/2addr v0, v8

    .line 192
    invoke-static {p1, v8, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    invoke-virtual {v3, v2}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 197
    :cond_d
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v4

    const/4 v5, 0x0

    .line 200
    :goto_6
    array-length v7, p1

    if-ge v5, v7, :cond_e

    aget-object v7, p1, v5

    instance-of v7, v7, Lgnu/expr/Keyword;

    if-nez v7, :cond_e

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 205
    :cond_e
    array-length v7, p1

    if-ne v5, v7, :cond_12

    .line 207
    invoke-virtual {v3, p1, v4}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v6

    if-nez v6, :cond_f

    .line 209
    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 211
    :cond_f
    move-object v7, v2

    check-cast v7, Lgnu/bytecode/ClassType;

    iget-object v8, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    const-string v10, "valueOf"

    invoke-static {v7, v10, v1, v8}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v7

    if-eqz v7, :cond_11

    sub-int/2addr v0, v9

    .line 215
    new-array v6, v0, [Ljava/lang/Object;

    .line 216
    invoke-static {p1, v9, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    invoke-virtual {v7, v6, v4}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    if-nez v0, :cond_10

    .line 219
    invoke-virtual {v4}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    move v6, v0

    .line 221
    :cond_11
    aget-object v0, p1, v1

    invoke-virtual {v3, v0}, Lgnu/mapping/MethodProc;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 225
    :cond_12
    new-array v0, v5, [Ljava/lang/Object;

    .line 226
    invoke-static {p1, v1, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    invoke-virtual {v3, v0}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_7
    move v4, v5

    :goto_8
    add-int/lit8 v7, v4, 0x1

    .line 232
    array-length v8, p1

    if-ge v7, v8, :cond_14

    .line 234
    aget-object v8, p1, v4

    .line 235
    instance-of v10, v8, Lgnu/expr/Keyword;

    if-nez v10, :cond_13

    goto :goto_9

    .line 237
    :cond_13
    check-cast v8, Lgnu/expr/Keyword;

    .line 238
    aget-object v7, p1, v7

    .line 239
    invoke-virtual {v8}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v0, v8, v7}, Lgnu/kawa/reflect/SlotSet;->apply(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x2

    goto :goto_8

    .line 242
    :cond_14
    :goto_9
    array-length v7, p1

    if-ne v5, v7, :cond_15

    goto :goto_a

    :cond_15
    move v9, v4

    .line 244
    :goto_a
    array-length v4, p1

    if-eq v9, v4, :cond_17

    .line 246
    check-cast v2, Lgnu/bytecode/ClassType;

    iget-object v4, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    const-string v5, "add"

    invoke-static {v2, v5, v1, v4}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 250
    :goto_b
    array-length v2, p1

    if-ge v9, v2, :cond_17

    add-int/lit8 v2, v9, 0x1

    .line 251
    aget-object v3, p1, v9

    invoke-virtual {v1, v0, v3}, Lgnu/mapping/MethodProc;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v9, v2

    goto :goto_b

    .line 249
    :cond_16
    invoke-static {v6, v3, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_17
    return-object v0

    .line 105
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": invoke-special not allowed at run time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected lookupMethods(Lgnu/bytecode/ObjectType;Ljava/lang/Object;)Lgnu/mapping/MethodProc;
    .locals 3

    .line 266
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    const-string p2, "<init>"

    goto :goto_2

    .line 270
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_3

    instance-of v0, p2, Lgnu/lists/FString;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_2

    .line 273
    check-cast p2, Lgnu/mapping/Symbol;

    invoke-virtual {p2}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 275
    :cond_2
    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    throw p1

    .line 271
    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 276
    :goto_1
    invoke-static {p2}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 278
    :goto_2
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x56

    const/16 v2, 0x50

    if-ne v0, v2, :cond_4

    const/16 v1, 0x50

    goto :goto_3

    :cond_4
    const/16 v2, 0x2a

    if-eq v0, v2, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    iget-object v0, p0, Lgnu/kawa/reflect/Invoke;->language:Lgnu/expr/Language;

    invoke-static {p1, p2, v1, v0}, Lgnu/kawa/reflect/ClassMethods;->apply(Lgnu/bytecode/ObjectType;Ljava/lang/String;CLgnu/expr/Language;)Lgnu/mapping/MethodProc;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 284
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/reflect/Invoke;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": no method named `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' in class "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .locals 2

    .line 260
    iget-char v0, p0, Lgnu/kawa/reflect/Invoke;->kind:C

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/lit16 v0, v0, -0x1000

    return v0
.end method
