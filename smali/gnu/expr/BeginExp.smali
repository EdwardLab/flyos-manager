.class public Lgnu/expr/BeginExp;
.super Lgnu/expr/Expression;
.source "BeginExp.java"


# instance fields
.field compileOptions:Ljava/util/Vector;

.field exps:[Lgnu/expr/Expression;

.field length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lgnu/expr/Expression;

    .line 41
    iput-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 44
    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length p1, p1

    iput p1, p0, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method public static final canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 3

    .line 52
    instance-of v0, p0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_2

    .line 54
    move-object v0, p0

    check-cast v0, Lgnu/expr/BeginExp;

    .line 55
    iget-object v1, v0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v1, :cond_0

    return-object p0

    .line 57
    :cond_0
    iget v1, v0, Lgnu/expr/BeginExp;->length:I

    if-nez v1, :cond_1

    .line 59
    sget-object p0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 61
    iget-object p0, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static final canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 2

    .line 68
    array-length v0, p0

    if-nez v0, :cond_0

    .line 70
    sget-object p0, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object p0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 72
    aget-object p0, p0, v0

    invoke-static {p0}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object p0

    return-object p0

    .line 73
    :cond_1
    new-instance v0, Lgnu/expr/BeginExp;

    invoke-direct {v0, p0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v0
.end method


# virtual methods
.method public final add(Lgnu/expr/Expression;)V
    .locals 4

    .line 78
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 79
    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 80
    :cond_0
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    iget-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v2, v1

    if-ne v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    .line 82
    new-array v2, v2, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    .line 83
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 86
    :cond_1
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/BeginExp;->length:I

    aput-object p1, v0, v1

    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 109
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 110
    sget-object v2, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    .line 114
    :try_start_0
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 118
    iput-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v0

    :cond_0
    iput-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 120
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4

    .line 137
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 140
    :try_start_0
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    throw p2
.end method

.method public final getExpressionCount()I
    .locals 1

    .line 90
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    return v0
.end method

.method public final getExpressions()[Lgnu/expr/Expression;
    .locals 1

    .line 89
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 2

    .line 203
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public popOptions(Lgnu/expr/Compilation;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 8

    const-string v0, "(Begin"

    const-string v1, ")"

    const/4 v2, 0x2

    .line 171
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 173
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 174
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    const-string v0, "(CompileOptions"

    .line 177
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 181
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 182
    iget-object v6, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    add-int/lit8 v7, v4, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    .line 183
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    const-string v7, ""

    .line 184
    invoke-virtual {p1, v7, v7, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const/16 v5, 0x3a

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 186
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 187
    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1, v7}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 192
    :cond_1
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    :goto_1
    if-ge v3, v0, :cond_2

    .line 195
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 196
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 198
    :cond_2
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public pushOptions(Lgnu/expr/Compilation;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

.method public setCompileOptions(Ljava/util/Vector;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    return-void
.end method

.method public final setExpressions([Lgnu/expr/Expression;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 95
    array-length p1, p1

    iput p1, p0, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 153
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v0}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 156
    :try_start_0
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object p1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    return-object p2

    :catchall_0
    move-exception p2

    iget-object p1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    throw p2
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
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

    .line 166
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    return-void
.end method
