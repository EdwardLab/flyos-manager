.class public Lgnu/expr/SetExp;
.super Lgnu/expr/AccessExp;
.source "SetExp.java"


# static fields
.field public static final BAD_SHORT:I = 0x10000

.field public static final DEFINING_FLAG:I = 0x2

.field public static final GLOBAL_FLAG:I = 0x4

.field public static final HAS_VALUE:I = 0x40

.field public static final PREFER_BINDING2:I = 0x8

.field public static final PROCEDURE:I = 0x10

.field public static final SET_IF_UNBOUND:I = 0x20


# instance fields
.field new_value:Lgnu/expr/Expression;


# direct methods
.method public constructor <init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 26
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/expr/Expression;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lgnu/expr/AccessExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method

.method public static canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I
    .locals 4

    .line 341
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    .line 343
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->promote()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-ne v0, v1, :cond_6

    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_6

    check-cast p0, Lgnu/expr/ApplyExp;

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 348
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v0

    .line 351
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    if-ne v0, v1, :cond_6

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    .line 357
    invoke-virtual {p0, v1}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v1

    .line 358
    invoke-virtual {p0, v2}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object p0

    .line 359
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    move-object v3, v1

    move-object v1, p0

    move-object p0, v3

    .line 365
    :cond_1
    instance-of v2, v1, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_6

    .line 367
    check-cast v1, Lgnu/expr/ReferenceExp;

    .line 368
    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Lgnu/expr/ReferenceExp;->getDontDereference()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 370
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object p0

    .line 372
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_4

    .line 374
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez v0, :cond_3

    neg-int p0, p0

    :cond_3
    int-to-short p1, p0

    if-ne p1, p0, :cond_6

    return p0

    .line 380
    :cond_4
    instance-of p1, p0, Lgnu/math/IntNum;

    if-eqz p1, :cond_6

    .line 382
    check-cast p0, Lgnu/math/IntNum;

    const/16 p1, 0x7fff

    const/16 v1, -0x7fff

    if-lez v0, :cond_5

    const/16 v1, -0x8000

    goto :goto_1

    :cond_5
    const p1, 0x8000

    :goto_1
    int-to-long v1, v1

    .line 389
    invoke-static {p0, v1, v2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result v1

    if-ltz v1, :cond_6

    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;J)I

    move-result p1

    if-gtz p1, :cond_6

    .line 391
    invoke-virtual {p0}, Lgnu/math/IntNum;->intValue()I

    move-result p0

    mul-int v0, v0, p0

    return v0

    :cond_6
    :goto_2
    const/high16 p0, 0x10000

    return p0
.end method

.method public static makeDefinition(Lgnu/expr/Declaration;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 1

    .line 39
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    const/4 p0, 0x1

    .line 40
    invoke-virtual {v0, p0}, Lgnu/expr/SetExp;->setDefining(Z)V

    return-object v0
.end method

.method public static makeDefinition(Ljava/lang/Object;Lgnu/expr/Expression;)Lgnu/expr/SetExp;
    .locals 1

    .line 32
    new-instance v0, Lgnu/expr/SetExp;

    invoke-direct {v0, p0, p1}, Lgnu/expr/SetExp;-><init>(Ljava/lang/Object;Lgnu/expr/Expression;)V

    const/4 p0, 0x1

    .line 33
    invoke-virtual {v0, p0}, Lgnu/expr/SetExp;->setDefining(Z)V

    return-object v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 88
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    check-cast v1, Lgnu/mapping/Symbol;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 92
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v3

    .line 93
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    sget-object v2, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 97
    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lgnu/mapping/Location;->isBound()Z

    move-result v2

    if-nez v2, :cond_2

    .line 99
    iget-object v2, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v2, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    invoke-virtual {p1, v1}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 105
    :cond_4
    iget-object v3, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v3, v0}, Lgnu/expr/Expression;->eval(Lgnu/mapping/Environment;)Ljava/lang/Object;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v4, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v4, v4, Lgnu/expr/ModuleExp;

    if-nez v4, :cond_7

    .line 108
    iget-object v0, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    iget-object v2, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget-object v2, v2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    invoke-static {v2}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v2

    aget-object v0, v0, v2

    .line 109
    iget-object v2, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 112
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    iget-object v2, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v2, v2, Lgnu/expr/Declaration;->evalIndex:I

    invoke-static {v1}, Lgnu/mapping/Location;->make(Lgnu/mapping/Symbol;)Lgnu/mapping/IndirectableLocation;

    move-result-object v1

    aput-object v1, v0, v2

    .line 114
    :cond_5
    iget-object v1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v1, v1, Lgnu/expr/Declaration;->evalIndex:I

    aget-object v0, v0, v1

    check-cast v0, Lgnu/mapping/Location;

    .line 115
    iget-object v1, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    :cond_6
    iget-object v1, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    iget v1, v1, Lgnu/expr/Declaration;->evalIndex:I

    aput-object v3, v0, v1

    goto :goto_1

    .line 120
    :cond_7
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 127
    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_8
    invoke-virtual {v0, v1, v2, v3}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :goto_1
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 134
    invoke-virtual {p1, v3}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 10

    .line 139
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v1, :cond_0

    check-cast v0, Lgnu/expr/LambdaExp;

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v4, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 160
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v5

    .line 161
    instance-of v6, v5, Lgnu/expr/LambdaExp;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v5

    check-cast v6, Lgnu/expr/LambdaExp;

    invoke-virtual {v6}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    if-ne v5, v6, :cond_2

    .line 167
    check-cast v6, Lgnu/expr/LambdaExp;

    invoke-virtual {v6, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    goto/16 :goto_5

    .line 169
    :cond_2
    invoke-virtual {v4}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    iget-object v5, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-nez v5, :cond_5

    .line 173
    invoke-virtual {v4}, Lgnu/expr/Declaration;->shouldEarlyInit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-static {v4, v0, p1}, Lgnu/expr/BindingInitializer;->create(Lgnu/expr/Declaration;Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    :cond_4
    if-eqz v1, :cond_1b

    .line 177
    sget-object v0, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p0, v2, p1, v0}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 184
    :cond_5
    invoke-virtual {p0}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 185
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v6

    if-nez v6, :cond_9

    move-object v6, p0

    :goto_2
    if-eqz v4, :cond_a

    .line 187
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 189
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    .line 190
    instance-of v8, v7, Lgnu/expr/ReferenceExp;

    if-nez v8, :cond_6

    goto :goto_3

    .line 192
    :cond_6
    check-cast v7, Lgnu/expr/ReferenceExp;

    .line 193
    iget-object v8, v7, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    .line 196
    invoke-virtual {v8}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_3

    .line 198
    :cond_8
    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move-object v6, v7

    move-object v4, v8

    goto :goto_2

    :cond_9
    move-object v6, p0

    .line 203
    :cond_a
    :goto_3
    invoke-virtual {v4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 204
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_5

    .line 205
    :cond_b
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 207
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p0, v8, p1, v5}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    const-string v4, "gnu.mapping.IndirectableLocation"

    .line 209
    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 211
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 212
    iget-object v5, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v6, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v5, p1, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    const-string v5, "setAlias"

    .line 213
    invoke-virtual {v4, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    .line 214
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    goto/16 :goto_5

    .line 216
    :cond_c
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v7

    const-string v9, "set"

    if-eqz v7, :cond_10

    .line 218
    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, v6, v8, p1, v5}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 220
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v1, :cond_d

    .line 224
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    .line 227
    :goto_4
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 228
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDup()V

    .line 229
    sget-object v5, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v5

    .line 230
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 231
    sget-object v6, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    const-string v7, "isBound"

    invoke-virtual {v6, v7, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 233
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    .line 234
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move v2, v4

    .line 236
    :cond_e
    iget-object v4, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v4, p1, v5}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    if-eqz v1, :cond_f

    .line 237
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v4

    if-nez v4, :cond_f

    .line 239
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    const/4 v2, 0x1

    .line 243
    :cond_f
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v9, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 245
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isSetIfUnbound()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 247
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 248
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto/16 :goto_5

    .line 251
    :cond_10
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 253
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 254
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v6

    if-nez v6, :cond_11

    .line 256
    invoke-virtual {v4, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v6

    .line 257
    :cond_11
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-static {v7, v4}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v7

    const/high16 v8, 0x10000

    if-eq v7, v8, :cond_12

    .line 260
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v4

    int-to-short v5, v7

    invoke-virtual {v4, v6, v5}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    if-eqz v1, :cond_1b

    .line 263
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto/16 :goto_1

    .line 269
    :cond_12
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v7, p1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    if-eqz v1, :cond_13

    .line 272
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    const/4 v2, 0x1

    .line 275
    :cond_13
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto/16 :goto_5

    .line 278
    :cond_14
    iget-object v6, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ClassExp;

    if-eqz v6, :cond_16

    iget-object v6, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-nez v6, :cond_16

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lgnu/expr/SetExp;->getFlag(I)Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/ClassExp;

    invoke-virtual {v6}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 282
    invoke-virtual {v4}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lgnu/expr/ClassExp;->slotToMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    iget-object v6, v4, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v6, Lgnu/expr/ClassExp;

    .line 284
    iget-object v7, v6, Lgnu/expr/ClassExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v7, v5, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v5

    .line 285
    invoke-virtual {v6, p1}, Lgnu/expr/ClassExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 286
    iget-object v6, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v6, p1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    if-eqz v1, :cond_15

    .line 289
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    const/4 v2, 0x1

    .line 292
    :cond_15
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_5

    .line 296
    :cond_16
    iget-object v6, v4, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 297
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v7

    if-nez v7, :cond_17

    .line 298
    invoke-virtual {v4, v5, p1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 299
    :cond_17
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    .line 300
    iget-object v7, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v7, p1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Declaration;)V

    .line 301
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgnu/expr/Compilation;->usedClass(Lgnu/bytecode/Type;)V

    .line 302
    invoke-virtual {v6}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_19

    if-eqz v1, :cond_18

    .line 306
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    const/4 v2, 0x1

    .line 309
    :cond_18
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    goto :goto_5

    :cond_19
    if-eqz v1, :cond_1a

    .line 315
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitDupX()V

    const/4 v2, 0x1

    .line 318
    :cond_1a
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    :cond_1b
    :goto_5
    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1c

    goto :goto_6

    .line 324
    :cond_1c
    new-instance p1, Ljava/lang/Error;

    const-string p2, "SetExp.compile: not implemented - return value"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    :goto_6
    if-eqz v1, :cond_1e

    .line 327
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_7

    .line 329
    :cond_1e
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    :goto_7
    return-void
.end method

.method public final getHasValue()Z
    .locals 1

    .line 66
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getNewValue()Lgnu/expr/Expression;
    .locals 1

    .line 45
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lgnu/expr/SetExp;->getHasValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    sget-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final isDefining()Z
    .locals 1

    .line 56
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isFuncDef()Z
    .locals 1

    .line 73
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSetIfUnbound()Z
    .locals 1

    .line 79
    iget v0, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4

    .line 415
    invoke-virtual {p0}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(Define"

    goto :goto_0

    :cond_0
    const-string v0, "(Set"

    :goto_0
    const/4 v1, 0x2

    const-string v2, ")"

    invoke-virtual {p1, v0, v2, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 417
    invoke-virtual {p0, p1}, Lgnu/expr/SetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 418
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    const/16 v1, 0x2f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {v3}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 420
    :cond_1
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 421
    iget-object v0, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-eqz v0, :cond_3

    .line 425
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(C)V

    .line 426
    iget-object v0, p0, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 428
    :cond_3
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 429
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 430
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    return-void
.end method

.method public final setDefining(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public final setFuncDef(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 76
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 p1, p1, -0x11

    :goto_0
    iput p1, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public final setHasValue(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 69
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 p1, p1, 0x40

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 p1, p1, -0x41

    :goto_0
    iput p1, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public final setSetIfUnbound(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    or-int/lit8 p1, p1, 0x20

    goto :goto_0

    :cond_0
    iget p1, p0, Lgnu/expr/SetExp;->flags:I

    and-int/lit8 p1, p1, -0x21

    :goto_0
    iput p1, p0, Lgnu/expr/SetExp;->flags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetExp["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/SetExp;->symbol:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 406
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 411
    iget-object v0, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object p1

    iput-object p1, p0, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    return-void
.end method
