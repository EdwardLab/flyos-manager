.class public abstract Lgnu/mapping/MethodProc;
.super Lgnu/mapping/ProcedureN;
.source "MethodProc.java"


# static fields
.field public static final NO_MATCH:I = -0x1

.field public static final NO_MATCH_AMBIGUOUS:I = -0xd0000

.field public static final NO_MATCH_BAD_TYPE:I = -0xc0000

.field public static final NO_MATCH_TOO_FEW_ARGS:I = -0xf0000

.field public static final NO_MATCH_TOO_MANY_ARGS:I = -0xe0000

.field static final unknownArgTypes:[Lgnu/bytecode/Type;


# instance fields
.field protected argTypes:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/bytecode/Type;

    .line 51
    sget-object v1, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2

    int-to-short v0, p0

    const/high16 v1, -0x10000

    and-int/2addr p0, v1

    const/high16 v1, -0xc0000

    if-eq p0, v1, :cond_0

    .line 104
    new-instance p0, Lgnu/mapping/WrongArguments;

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Lgnu/mapping/WrongType;

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object p2, p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V

    return-object p0
.end method

.method public static mostSpecific([Lgnu/mapping/MethodProc;I)I
    .locals 11

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 173
    aget-object v2, p0, v1

    const/4 v3, 0x0

    move-object v6, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v4, p1, :cond_8

    .line 183
    aget-object v7, p0, v4

    if-eqz v2, :cond_3

    .line 186
    invoke-static {v2, v7}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v8

    if-nez v8, :cond_2

    if-nez v6, :cond_1

    .line 190
    new-array v6, p1, [Lgnu/mapping/MethodProc;

    .line 191
    :cond_1
    aput-object v2, v6, v1

    .line 192
    aput-object v7, v6, v0

    const/4 v5, 0x2

    move-object v2, v3

    goto :goto_3

    :cond_2
    if-ne v8, v7, :cond_7

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_6

    .line 206
    aget-object v9, v6, v8

    .line 207
    invoke-static {v9, v7}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v10

    if-ne v10, v9, :cond_4

    goto :goto_3

    :cond_4
    if-nez v10, :cond_5

    add-int/lit8 v8, v5, 0x1

    .line 212
    aput-object v7, v6, v5

    move v5, v8

    goto :goto_3

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    move v5, v4

    move-object v2, v7

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    if-nez v2, :cond_9

    const/4 v5, -0x1

    :cond_9
    return v5
.end method

.method public static mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;
    .locals 8

    .line 125
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v1

    .line 127
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v2

    .line 128
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v3

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    if-lt v2, v1, :cond_1

    :cond_0
    if-ltz v3, :cond_2

    if-ge v3, v0, :cond_2

    :cond_1
    return-object v4

    .line 132
    :cond_2
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v5

    .line 133
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->numParameters()I

    move-result v6

    if-le v5, v6, :cond_3

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_5

    if-gez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    if-gez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    if-le v0, v1, :cond_8

    const/4 v3, 0x1

    :cond_8
    :goto_3
    if-ge v6, v5, :cond_d

    .line 148
    invoke-virtual {p0, v6}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v6}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    if-eqz v2, :cond_9

    return-object v4

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-ne v0, v7, :cond_c

    if-eqz v3, :cond_b

    return-object v4

    :cond_b
    const/4 v2, 0x1

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_e

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_f

    move-object p0, p1

    goto :goto_4

    :cond_f
    move-object p0, v4

    :goto_4
    return-object p0
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 110
    array-length v0, p1

    invoke-static {p0, v0}, Lgnu/mapping/MethodProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 111
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 112
    invoke-virtual {p0, p1, v0}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 113
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getParameterType(I)Lgnu/bytecode/Type;
    .locals 2

    .line 61
    iget-object v0, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    instance-of v0, v0, [Lgnu/bytecode/Type;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 64
    :cond_0
    iget-object v0, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    check-cast v0, [Lgnu/bytecode/Type;

    check-cast v0, [Lgnu/bytecode/Type;

    .line 65
    array-length v1, v0

    if-ge p1, v1, :cond_2

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v1

    if-ltz v1, :cond_2

    .line 67
    :cond_1
    aget-object p1, v0, p1

    return-object p1

    .line 68
    :cond_2
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result p1

    if-gez p1, :cond_3

    .line 70
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    .line 71
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_3

    .line 72
    check-cast p1, Lgnu/bytecode/ArrayType;

    invoke-virtual {p1}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object p1

    return-object p1

    .line 74
    :cond_3
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .locals 5

    .line 21
    array-length v0, p1

    .line 22
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v1

    and-int/lit16 v2, v1, 0xfff

    const/4 v3, -0x1

    if-lt v0, v2, :cond_4

    if-ltz v1, :cond_0

    shr-int/lit8 v1, v1, 0xc

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, v3

    if-ltz v0, :cond_3

    .line 29
    invoke-virtual {p0, v0}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v2

    .line 30
    aget-object v4, p1, v0

    invoke-virtual {v2, v4}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v2

    const/4 v4, -0x3

    if-ne v2, v4, :cond_2

    return v3

    :cond_2
    if-gez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v3
.end method

.method public numParameters()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lgnu/mapping/MethodProc;->numArgs()I

    move-result v0

    shr-int/lit8 v1, v0, 0xc

    if-ltz v1, :cond_0

    return v1

    :cond_0
    and-int/lit16 v0, v0, 0xfff

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected resolveParameterTypes()V
    .locals 1

    .line 56
    sget-object v0, Lgnu/mapping/MethodProc;->unknownArgTypes:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/mapping/MethodProc;->argTypes:Ljava/lang/Object;

    return-void
.end method
