.class public abstract Lgnu/mapping/Procedure;
.super Lgnu/mapping/PropertySet;
.source "Procedure.java"


# static fields
.field public static final compilerKey:Lgnu/mapping/LazyPropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/mapping/LazyPropertyKey<",
            "*>;"
        }
    .end annotation
.end field

.field private static final setterKey:Lgnu/mapping/Symbol;

.field private static final sourceLocationKey:Ljava/lang/String; = "source-location"

.field public static final validateApplyKey:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "setter"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    .line 22
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    const-string v1, "validate-apply"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    .line 27
    new-instance v0, Lgnu/mapping/LazyPropertyKey;

    const-string v1, "compiler"

    invoke-direct {v0, v1}, Lgnu/mapping/LazyPropertyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lgnu/mapping/PropertySet;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 119
    iget v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 120
    iget v1, p1, Lgnu/mapping/CallContext;->where:I

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 144
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 130
    :cond_4
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object p0

    .line 148
    :goto_0
    invoke-virtual {p1, p0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 93
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    if-lt p1, v1, :cond_1

    if-ltz v0, :cond_0

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Lgnu/mapping/WrongArguments;

    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0
.end method

.method public static maxArgs(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xc

    return p0
.end method

.method public static minArgs(I)I
    .locals 0

    and-int/lit16 p0, p0, 0xfff

    return p0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 113
    invoke-static {p0, p1}, Lgnu/mapping/Procedure;->apply(Lgnu/mapping/Procedure;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public abstract apply0()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public check0(Lgnu/mapping/CallContext;)V
    .locals 1

    .line 319
    invoke-virtual {p0, p1}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public check1(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 329
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 333
    invoke-static {p2, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public check2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 340
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 344
    invoke-static {p3, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public check3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 351
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 355
    invoke-static {p4, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public check4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 2

    .line 363
    invoke-virtual/range {p0 .. p5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p5

    if-nez p5, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 367
    invoke-static {p5, p0, v0}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-static {p2, p0, p1}, Lgnu/mapping/MethodProc;->matchFailAsException(ILgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 0

    .line 434
    sget-object p1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object p1
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .locals 3

    .line 383
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-nez v0, :cond_1

    .line 385
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    instance-of v1, v0, Lgnu/mapping/Procedure;

    if-eqz v1, :cond_0

    .line 387
    check-cast v0, Lgnu/mapping/Procedure;

    return-object v0

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has no setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    if-nez v0, :cond_2

    .line 392
    new-instance v0, Lgnu/mapping/Setter0;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0

    :cond_2
    const/16 v1, 0x1001

    if-ne v0, v1, :cond_3

    .line 394
    new-instance v0, Lgnu/mapping/Setter1;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter1;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0

    .line 395
    :cond_3
    new-instance v0, Lgnu/mapping/Setter;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 2

    const-string v0, "source-location"

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0, v0, v1}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isSideEffectFree()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .locals 2

    .line 156
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 157
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    if-lez v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    if-gez v0, :cond_1

    .line 161
    sget-object v0, Lgnu/mapping/ProcedureN;->noArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 162
    iput v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 163
    iput v0, p1, Lgnu/mapping/CallContext;->where:I

    .line 164
    iput v0, p1, Lgnu/mapping/CallContext;->next:I

    .line 165
    iput-object p0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 174
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 175
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 180
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 183
    :cond_1
    iput-object p1, p2, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 184
    iput v2, p2, Lgnu/mapping/CallContext;->count:I

    .line 185
    iput v2, p2, Lgnu/mapping/CallContext;->where:I

    .line 186
    iput v1, p2, Lgnu/mapping/CallContext;->next:I

    .line 187
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 191
    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 199
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 200
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 205
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 208
    :cond_1
    iput-object p1, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 209
    iput-object p2, p3, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 210
    iput v2, p3, Lgnu/mapping/CallContext;->count:I

    const/16 p1, 0x21

    .line 211
    iput p1, p3, Lgnu/mapping/CallContext;->where:I

    .line 213
    iput v1, p3, Lgnu/mapping/CallContext;->next:I

    .line 214
    iput-object p0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 218
    invoke-virtual {p0, v0, p3}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 226
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 227
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 232
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 235
    :cond_1
    iput-object p1, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 236
    iput-object p2, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 237
    iput-object p3, p4, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 238
    iput v2, p4, Lgnu/mapping/CallContext;->count:I

    const/16 p1, 0x321

    .line 239
    iput p1, p4, Lgnu/mapping/CallContext;->where:I

    .line 242
    iput v1, p4, Lgnu/mapping/CallContext;->next:I

    .line 243
    iput-object p0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 247
    invoke-virtual {p0, v0, p4}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3

    .line 256
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 257
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 262
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    if-ge v0, v2, :cond_1

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 265
    :cond_1
    iput-object p1, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    .line 266
    iput-object p2, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    .line 267
    iput-object p3, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    .line 268
    iput-object p4, p5, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    .line 269
    iput v2, p5, Lgnu/mapping/CallContext;->count:I

    const/16 p1, 0x4321

    .line 270
    iput p1, p5, Lgnu/mapping/CallContext;->where:I

    .line 274
    iput v1, p5, Lgnu/mapping/CallContext;->next:I

    .line 275
    iput-object p0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 279
    invoke-virtual {p0, v0, p5}, Lgnu/mapping/Procedure;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 7

    .line 284
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 285
    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v1

    .line 286
    array-length v2, p1

    if-ge v2, v1, :cond_0

    const/high16 p1, -0xf0000

    or-int/2addr p1, v1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 290
    array-length v2, p1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    const/4 v6, 0x4

    if-eq v2, v6, :cond_1

    .line 303
    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    .line 304
    array-length v2, p1

    if-le v2, v0, :cond_6

    const/high16 p1, -0xe0000

    or-int/2addr p1, v0

    return p1

    .line 301
    :cond_1
    aget-object v1, p1, v1

    aget-object v2, p1, v3

    aget-object v3, p1, v4

    aget-object v4, p1, v5

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lgnu/mapping/Procedure;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 299
    :cond_2
    aget-object v0, p1, v1

    aget-object v1, p1, v3

    aget-object p1, p1, v4

    invoke-virtual {p0, v0, v1, p1, p2}, Lgnu/mapping/Procedure;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 297
    :cond_3
    aget-object v0, p1, v1

    aget-object p1, p1, v3

    invoke-virtual {p0, v0, p1, p2}, Lgnu/mapping/Procedure;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 295
    :cond_4
    aget-object p1, p1, v1

    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 293
    :cond_5
    invoke-virtual {p0, p2}, Lgnu/mapping/Procedure;->match0(Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 308
    :cond_6
    iput-object p1, p2, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 309
    array-length p1, p1

    iput p1, p2, Lgnu/mapping/CallContext;->count:I

    .line 310
    iput v1, p2, Lgnu/mapping/CallContext;->where:I

    .line 311
    iput v1, p2, Lgnu/mapping/CallContext;->next:I

    .line 312
    iput-object p0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    return v1
.end method

.method public final maxArgs()I
    .locals 1

    .line 69
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->maxArgs(I)I

    move-result v0

    return v0
.end method

.method public final minArgs()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    invoke-static {v0}, Lgnu/mapping/Procedure;->minArgs(I)I

    move-result v0

    return v0
.end method

.method public numArgs()I
    .locals 1

    const/16 v0, -0x1000

    return v0
.end method

.method public set0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setN([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSetter()Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSetter(Lgnu/mapping/Procedure;)V
    .locals 2

    .line 400
    instance-of v0, p0, Lgnu/mapping/HasSetter;

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lgnu/mapping/Procedure;->setterKey:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0, p1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 401
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "procedure \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has builtin setter - cannot be modified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSourceLocation(Ljava/lang/String;I)V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "source-location"

    invoke-virtual {p0, p2, p1}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "#<procedure "

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 443
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getSourceLocation()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 446
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3e

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
