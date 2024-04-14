.class public abstract Lgnu/expr/Expression;
.super Lgnu/mapping/Procedure0;
.source "Expression.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Lgnu/text/SourceLocator;


# static fields
.field protected static final NEXT_AVAIL_FLAG:I = 0x2

.field public static final VALIDATED:I = 0x1

.field public static final noExpressions:[Lgnu/expr/Expression;


# instance fields
.field filename:Ljava/lang/String;

.field protected flags:I

.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 268
    sput-object v0, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure0;-><init>()V

    return-void
.end method

.method public static compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 4

    .line 184
    instance-of v0, p0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_1

    .line 186
    check-cast p0, Lgnu/expr/BeginExp;

    .line 187
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v1, 0x0

    .line 191
    aget-object v1, p0, v1

    invoke-static {v1, p1}, Lgnu/expr/Expression;->compileButFirst(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    aget-object v2, p0, v1

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static deepCopy(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 1

    .line 234
    new-instance v0, Lgnu/kawa/util/IdentityHashTable;

    invoke-direct {v0}, Lgnu/kawa/util/IdentityHashTable;-><init>()V

    invoke-static {p0, v0}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 207
    :cond_0
    invoke-virtual {p1, p0}, Lgnu/kawa/util/IdentityHashTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    check-cast v0, Lgnu/expr/Expression;

    return-object v0

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v0

    .line 210
    invoke-virtual {p1, p0, v0}, Lgnu/kawa/util/IdentityHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 219
    :cond_0
    array-length v1, p0

    .line 220
    new-array v2, v1, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 223
    aget-object v4, p0, v3

    .line 224
    invoke-static {v4, p1}, Lgnu/expr/Expression;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    return-object v0

    .line 227
    :cond_1
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static makeWhile(Ljava/lang/Object;Ljava/lang/Object;Lgnu/expr/Compilation;)Lgnu/expr/Expression;
    .locals 9

    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 274
    new-instance v1, Lgnu/expr/LetExp;

    invoke-direct {v1, v0}, Lgnu/expr/LetExp;-><init>([Lgnu/expr/Expression;)V

    const-string v2, "%do%loop"

    .line 276
    invoke-virtual {v1, v2}, Lgnu/expr/LetExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 277
    new-instance v4, Lgnu/expr/ApplyExp;

    new-instance v5, Lgnu/expr/ReferenceExp;

    invoke-direct {v5, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    sget-object v6, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v4, v5, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 278
    new-instance v5, Lgnu/expr/LambdaExp;

    invoke-direct {v5}, Lgnu/expr/LambdaExp;-><init>()V

    .line 279
    invoke-virtual {p2, v5}, Lgnu/expr/Compilation;->push(Lgnu/expr/ScopeExp;)V

    .line 280
    new-instance v7, Lgnu/expr/IfExp;

    invoke-virtual {p2, p0}, Lgnu/expr/Compilation;->parse(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p0

    new-instance v8, Lgnu/expr/BeginExp;

    invoke-virtual {p2, p1}, Lgnu/expr/Compilation;->parse(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    invoke-direct {v8, p1, v4}, Lgnu/expr/BeginExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    sget-object p1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v7, p0, v8, p1}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    iput-object v7, v5, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 283
    invoke-virtual {v5, v2}, Lgnu/expr/LambdaExp;->setName(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2, v5}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    const/4 p0, 0x0

    aput-object v5, v0, p0

    .line 286
    invoke-virtual {v3, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 287
    new-instance p0, Lgnu/expr/ApplyExp;

    new-instance p1, Lgnu/expr/ReferenceExp;

    invoke-direct {p1, v3}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {p0, p1, v6}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {v1, p0}, Lgnu/expr/LetExp;->setBody(Lgnu/expr/Expression;)V

    return-object v1
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".eval called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final apply0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 60
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->check0(Lgnu/mapping/CallContext;)V

    .line 62
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 0

    .line 166
    invoke-static {p2}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public final compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V
    .locals 0

    .line 176
    invoke-static {p2}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    return-void
.end method

.method public abstract compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
.end method

.method public final compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V
    .locals 3

    .line 152
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v1

    .line 154
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result v2

    .line 155
    invoke-virtual {p1, p3}, Lgnu/expr/Compilation;->setLine(Lgnu/expr/Expression;)V

    .line 156
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 160
    invoke-virtual {p1, v0, v1, v2}, Lgnu/expr/Compilation;->setLine(Ljava/lang/String;II)V

    return-void
.end method

.method public final compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p0, p1, p2, p0}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_0
    return-void
.end method

.method public final compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V
    .locals 3

    .line 138
    invoke-virtual {p3}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 141
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    invoke-virtual {p3}, Lgnu/expr/Expression;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {p0, p1, p2, p3}, Lgnu/expr/Expression;->compileNotePosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_0
    return-void
.end method

.method protected deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->startFromContext()I

    move-result v0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->match0(Lgnu/mapping/CallContext;)I

    .line 26
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->getFromContext(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v1

    .line 30
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->cleanupFromContext(I)V

    .line 31
    throw v1
.end method

.method public final eval(Lgnu/mapping/Environment;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 37
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 38
    invoke-static {p1}, Lgnu/mapping/Environment;->setSaveCurrent(Lgnu/mapping/Environment;)Lgnu/mapping/Environment;

    move-result-object p1

    .line 41
    :try_start_0
    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {p1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lgnu/mapping/Environment;->restoreCurrent(Lgnu/mapping/Environment;)V

    throw v0
.end method

.method public final getColumnNumber()I
    .locals 1

    .line 359
    iget v0, p0, Lgnu/expr/Expression;->position:I

    and-int/lit16 v0, v0, 0xfff

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag(I)Z
    .locals 1

    .line 404
    iget v0, p0, Lgnu/expr/Expression;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFlags()I
    .locals 1

    .line 399
    iget v0, p0, Lgnu/expr/Expression;->flags:I

    return v0
.end method

.method public final getLineNumber()I
    .locals 1

    .line 353
    iget v0, p0, Lgnu/expr/Expression;->position:I

    shr-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .line 368
    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public isSingleValue()Z
    .locals 1

    .line 373
    invoke-virtual {p0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v0

    return v0
.end method

.method public isStableSourceLocation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final match0(Lgnu/mapping/CallContext;)I
    .locals 1

    .line 53
    iput-object p0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x0

    .line 54
    iput v0, p1, Lgnu/mapping/CallContext;->pc:I

    return v0
.end method

.method protected abstract mustCompile()Z
.end method

.method public final print(Lgnu/lists/Consumer;)V
    .locals 1

    .line 78
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lgnu/mapping/OutPort;

    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    goto :goto_0

    .line 80
    :cond_0
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Lgnu/mapping/OutPort;

    check-cast p1, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 83
    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 84
    invoke-virtual {v0}, Lgnu/mapping/OutPort;->close()V

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Lgnu/mapping/CharArrayOutPort;

    invoke-direct {v0}, Lgnu/mapping/CharArrayOutPort;-><init>()V

    .line 89
    invoke-virtual {p0, v0}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 90
    invoke-virtual {v0}, Lgnu/mapping/CharArrayOutPort;->close()V

    .line 91
    invoke-virtual {v0, p1}, Lgnu/mapping/CharArrayOutPort;->writeTo(Lgnu/lists/Consumer;)V

    :goto_0
    return-void
.end method

.method public abstract print(Lgnu/mapping/OutPort;)V
.end method

.method public printLineColumn(Lgnu/mapping/OutPort;)V
    .locals 2

    .line 103
    invoke-virtual {p0}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, "line:"

    .line 106
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 108
    invoke-virtual {p0}, Lgnu/expr/Expression;->getColumnNumber()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v1, 0x3a

    .line 111
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 112
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(I)V

    .line 114
    :cond_0
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    :cond_1
    return-void
.end method

.method public final setFile(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFlag(I)V
    .locals 1

    .line 394
    iget v0, p0, Lgnu/expr/Expression;->flags:I

    or-int/2addr p1, v0

    iput p1, p0, Lgnu/expr/Expression;->flags:I

    return-void
.end method

.method public setFlag(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 388
    iget p1, p0, Lgnu/expr/Expression;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Lgnu/expr/Expression;->flags:I

    goto :goto_0

    .line 389
    :cond_0
    iget p1, p0, Lgnu/expr/Expression;->flags:I

    not-int p2, p2

    and-int/2addr p1, p2

    iput p1, p0, Lgnu/expr/Expression;->flags:I

    :goto_0
    return-void
.end method

.method public final setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Lgnu/expr/Expression;->setLocation(Lgnu/text/SourceLocator;)V

    return-object p0
.end method

.method public final setLine(I)V
    .locals 1

    const/4 v0, 0x0

    .line 320
    invoke-virtual {p0, p1, v0}, Lgnu/expr/Expression;->setLine(II)V

    return-void
.end method

.method public final setLine(II)V
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    shl-int/lit8 p1, p1, 0xc

    add-int/2addr p1, p2

    .line 315
    iput p1, p0, Lgnu/expr/Expression;->position:I

    return-void
.end method

.method public setLine(Lgnu/expr/Compilation;)V
    .locals 2

    .line 331
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getLineNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/Expression;->setFile(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Expression;->setLine(II)V

    :cond_0
    return-void
.end method

.method public final setLocation(Lgnu/text/SourceLocator;)V
    .locals 1

    .line 294
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/Expression;->filename:Ljava/lang/String;

    .line 295
    invoke-interface {p1}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    invoke-interface {p1}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgnu/expr/Expression;->setLine(II)V

    return-void
.end method

.method public side_effects()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnu.expr."

    .line 413
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    .line 414
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 0

    .line 261
    iget-object p3, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-object p1
.end method

.method public valueIfConstant()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

    .line 244
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitExpression(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    return-void
.end method
