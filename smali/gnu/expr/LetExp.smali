.class public Lgnu/expr/LetExp;
.super Lgnu/expr/ScopeExp;
.source "LetExp.java"


# instance fields
.field public body:Lgnu/expr/Expression;

.field public inits:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lgnu/expr/LetExp;->setIndexes()V

    .line 31
    invoke-static {p0}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 32
    iget v1, p0, Lgnu/expr/LetExp;->frameSize:I

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    iget-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    add-int/lit8 v2, v0, 0xa

    .line 38
    new-array v2, v2, [[Ljava/lang/Object;

    .line 39
    iput-object v2, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    add-int/lit8 v4, v0, 0xa

    .line 43
    new-array v4, v4, [[Ljava/lang/Object;

    .line 44
    array-length v5, v2

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v4, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    move-object v2, v4

    .line 47
    :cond_1
    :goto_0
    aget-object v4, v2, v0

    .line 48
    aput-object v1, v2, v0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_5

    .line 56
    iget-object v6, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v6, v6, v3

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v6, v7, :cond_2

    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p0, v3, p1}, Lgnu/expr/LetExp;->evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    .line 59
    iget-object v7, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    if-eqz v7, :cond_3

    .line 60
    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v7, v8, :cond_3

    .line 61
    invoke-virtual {v7, v6}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 62
    :cond_3
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 64
    invoke-virtual {v5}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v6}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    move-object v6, v7

    .line 68
    :cond_4
    aput-object v6, v1, v3

    .line 54
    :goto_2
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 70
    :cond_5
    iget-object v1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    aput-object v4, v2, v0

    return-void

    :catchall_0
    move-exception p1

    aput-object v4, v2, v0

    throw p1
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 8

    .line 150
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 165
    :goto_0
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 168
    aget-object v4, v4, v3

    .line 169
    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    :cond_0
    if-eqz v5, :cond_3

    .line 172
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 178
    invoke-static {v1}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;

    move-result-object v6

    .line 179
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v4, v7, :cond_4

    .line 182
    instance-of v7, v5, Lgnu/bytecode/PrimType;

    if-eqz v7, :cond_2

    .line 183
    new-instance v4, Lgnu/expr/QuoteExp;

    new-instance v5, Ljava/lang/Byte;

    invoke-direct {v5, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v4, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_4

    .line 184
    sget-object v7, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v5, v7, :cond_4

    .line 185
    sget-object v4, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_2

    .line 174
    :cond_3
    :goto_1
    sget-object v6, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 188
    :cond_4
    :goto_2
    invoke-virtual {v4, p1, v6}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    add-int/lit8 v3, v3, 0x1

    .line 165
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/LetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 194
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 196
    iget-object v1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 197
    invoke-virtual {p0, v0}, Lgnu/expr/LetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    return-void
.end method

.method protected evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object p1, v0, p1

    .line 25
    invoke-virtual {p1, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getBody()Lgnu/expr/Expression;
    .locals 1

    .line 17
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 202
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 2

    const-string v0, "(Let"

    const-string v1, ")"

    .line 236
    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/LetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lgnu/expr/LetExp;->id:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 243
    invoke-virtual {p0, p1}, Lgnu/expr/LetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    const-string p2, "("

    const/4 v0, 0x0

    const-string v1, ")"

    .line 244
    invoke-virtual {p1, p2, v0, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-lez v3, :cond_0

    .line 251
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 252
    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 253
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 254
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    if-eqz v4, :cond_3

    .line 256
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    const/16 v4, 0x3d

    .line 257
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(C)V

    .line 258
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 263
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v5, v4

    if-lt v3, v5, :cond_1

    const-string v4, "<missing init>"

    .line 264
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_1
    aget-object v4, v4, v3

    if-nez v4, :cond_2

    const-string v4, "<null>"

    .line 266
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 272
    :cond_3
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 276
    iget-object p2, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    if-nez p2, :cond_5

    const-string p2, "<null body>"

    .line 277
    invoke-virtual {p1, p2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 279
    :cond_5
    invoke-virtual {p2, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 280
    :goto_2
    invoke-virtual {p1, p3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V
    .locals 2

    if-eqz p3, :cond_2

    add-int/lit8 v0, p2, 0x1

    .line 126
    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 127
    invoke-virtual {p3}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object p2, v1, p2

    sget-object v1, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne p2, v1, :cond_0

    .line 134
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p2

    .line 135
    sget-object v1, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, p2, v1}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 136
    invoke-static {p2}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 143
    :cond_1
    :goto_0
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    :cond_2
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

    .line 207
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 1
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

    .line 229
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LetExp;->visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    :cond_0
    return-void
.end method

.method public visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 5
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

    .line 212
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    :goto_0
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 215
    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 218
    invoke-virtual {p1, v2, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 221
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v3, v4, v1

    .line 222
    iget-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-ne v4, v2, :cond_0

    .line 223
    iput-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 213
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_1
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "null2 init for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " was:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_2
    new-instance p1, Ljava/lang/Error;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null1 init for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " i:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " d:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
