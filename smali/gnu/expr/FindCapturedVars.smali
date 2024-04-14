.class public Lgnu/expr/FindCapturedVars;
.super Lgnu/expr/ExpExpVisitor;
.source "FindCapturedVars.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/expr/ExpExpVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field backJumpPossible:I

.field currentModule:Lgnu/expr/ModuleExp;

.field unknownDecls:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lgnu/expr/ExpExpVisitor;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 427
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    return-void
.end method

.method static checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/expr/LambdaExp;",
            "Ljava/util/Set<",
            "Lgnu/expr/LambdaExp;",
            ">;)",
            "Lgnu/expr/Expression;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object p0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    return-object p0

    .line 229
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iget-object p0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    return-object p0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-eq v0, v1, :cond_2

    goto :goto_3

    .line 238
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 240
    iget-object v1, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    if-eqz v1, :cond_c

    .line 242
    iget-object v1, p0, Lgnu/expr/LambdaExp;->tailCallers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/LambdaExp;

    .line 244
    invoke-static {v2, p1}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v3

    .line 245
    sget-object v4, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne v3, v4, :cond_6

    if-eqz v0, :cond_5

    .line 247
    iget-object v4, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-ne v0, v4, :cond_4

    goto :goto_1

    .line 254
    :cond_4
    sget-object p1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    return-object v3

    .line 249
    :cond_5
    :goto_1
    iget-object v0, v2, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 250
    iput-object v2, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    goto :goto_0

    :cond_6
    if-nez v0, :cond_9

    .line 261
    iget-object v0, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v0, :cond_8

    .line 262
    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->nestedIn(Lgnu/expr/ScopeExp;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, v2, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    :goto_2
    iput-object v2, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    :cond_8
    move-object v0, v3

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    if-ne v0, v3, :cond_b

    :cond_a
    const/16 v2, 0x20

    .line 264
    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    :cond_b
    sget-object p1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 268
    sget-object p0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-object p0

    :cond_c
    return-object v0

    .line 235
    :cond_d
    :goto_3
    sget-object p1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnContinuation:Lgnu/expr/Expression;

    .line 236
    sget-object p0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-object p0
.end method

.method public static findCapturedVars(Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 1

    .line 15
    new-instance v0, Lgnu/expr/FindCapturedVars;

    invoke-direct {v0}, Lgnu/expr/FindCapturedVars;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Lgnu/expr/FindCapturedVars;->setContext(Lgnu/expr/Compilation;)V

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, v0, p1}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 433
    instance-of v1, p1, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/Language;->hasSeparateFunctionNamespace()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    const/4 p2, 0x0

    goto :goto_0

    .line 438
    :cond_0
    new-instance v1, Lgnu/mapping/KeyPair;

    move-object v2, p1

    check-cast v2, Lgnu/mapping/Symbol;

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lgnu/mapping/KeyPair;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 440
    :goto_0
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    .line 442
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    const/4 v2, 0x0

    goto :goto_1

    .line 446
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Declaration;

    :goto_1
    if-nez v2, :cond_5

    .line 449
    iget-object v2, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {v2, p1}, Lgnu/expr/ModuleExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 450
    invoke-virtual {v2, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    const/4 p1, 0x1

    .line 451
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    if-eqz p2, :cond_3

    .line 453
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 454
    :cond_3
    iget-object p2, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    invoke-virtual {p2}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result p2

    if-eqz p2, :cond_4

    const-wide/16 v3, 0x800

    .line 455
    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 456
    :cond_4
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 457
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    const-wide/32 v3, 0x50000

    .line 462
    invoke-virtual {v2, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 463
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 464
    iget-object p1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    invoke-virtual {p1, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v2
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .locals 12

    .line 294
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    iget-boolean v0, v0, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lgnu/expr/Declaration;->hasConstantValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 303
    :cond_2
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 304
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getContext()Lgnu/expr/ScopeExp;

    move-result-object v1

    const-string v2, " curL:"

    if-eqz v1, :cond_1a

    .line 306
    invoke-virtual {v1}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-eq v0, v1, :cond_6

    .line 324
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 326
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v6

    if-eq v6, v4, :cond_3

    .line 330
    iget-object v5, v6, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    move-object v4, v6

    :cond_3
    if-eqz v5, :cond_5

    .line 333
    iget-object v6, v0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    if-nez v6, :cond_4

    goto :goto_1

    .line 339
    :cond_4
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 340
    iget-object v5, v5, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    .line 336
    invoke-virtual {v0, p1}, Lgnu/expr/LambdaExp;->setCanCall(Z)V

    return-void

    .line 342
    :cond_6
    iget-object v4, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 344
    instance-of v4, v0, Lgnu/expr/ModuleExp;

    if-eqz v4, :cond_8

    return-void

    :cond_7
    if-ne v0, v1, :cond_8

    return-void

    .line 352
    :cond_8
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 354
    instance-of v5, v4, Lgnu/expr/LambdaExp;

    if-nez v5, :cond_9

    goto :goto_2

    .line 358
    :cond_9
    check-cast v4, Lgnu/expr/LambdaExp;

    .line 359
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-eqz v5, :cond_a

    return-void

    .line 361
    :cond_a
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_2

    :cond_b
    if-ne v4, v0, :cond_c

    .line 363
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v3

    if-nez v3, :cond_c

    return-void

    :cond_c
    move-object v3, v4

    :cond_d
    :goto_2
    const-wide/32 v4, 0x10000

    .line 367
    invoke-virtual {p1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    const-wide/16 v5, 0x800

    if-eqz v4, :cond_10

    move-object v4, v0

    :goto_3
    if-ne v4, v1, :cond_e

    goto :goto_4

    .line 374
    :cond_e
    iget-object v7, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_f

    iget-object v7, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v7, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 377
    invoke-virtual {p1, v5, v6}, Lgnu/expr/Declaration;->setFlag(J)V

    goto :goto_4

    .line 370
    :cond_f
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    goto :goto_3

    .line 382
    :cond_10
    :goto_4
    iget-object v4, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-eqz v4, :cond_11

    .line 384
    iget-object v0, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 385
    iget-object p1, p1, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto/16 :goto_8

    .line 387
    :cond_11
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanCall()Z

    move-result v4

    if-nez v4, :cond_12

    if-nez v3, :cond_19

    .line 389
    :cond_12
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v4

    if-nez v4, :cond_17

    .line 392
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v4

    if-nez v4, :cond_13

    .line 393
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    .line 394
    :cond_13
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    :goto_5
    if-eq v4, v1, :cond_17

    if-eqz v4, :cond_17

    .line 398
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getCanRead()Z

    move-result v7

    if-nez v7, :cond_14

    if-ne v3, v4, :cond_14

    goto :goto_6

    .line 400
    :cond_14
    iget-object v7, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_15

    .line 401
    invoke-virtual {v7, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 404
    iget-object v7, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v8, 0x65

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "static "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " references non-static "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 407
    :cond_15
    instance-of v7, v4, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_16

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    move-object v7, v4

    check-cast v7, Lgnu/expr/ClassExp;

    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 410
    iget-object v7, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    const/16 v8, 0x77

    iget-object v9, v4, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " requiring lexical link (because of reference to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") - use define-class instead"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "simple class "

    invoke-virtual {v7, v8, v9, v11, v10}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_16
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 413
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    goto :goto_5

    :cond_17
    :goto_6
    if-nez v1, :cond_18

    .line 417
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null declLambda for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    iget-object v0, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    :goto_7
    if-eqz v0, :cond_18

    .line 420
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- context:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_7

    .line 422
    :cond_18
    invoke-virtual {v1, p1}, Lgnu/expr/LambdaExp;->capture(Lgnu/expr/Declaration;)V

    :cond_19
    :goto_8
    return-void

    .line 305
    :cond_1a
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .locals 3

    .line 490
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 493
    iget-object v1, v0, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 494
    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 497
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    return-void

    .line 501
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/FluidLetExp;

    if-eqz v0, :cond_2

    .line 503
    iget-object p2, p2, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 505
    invoke-virtual {p2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {p0, p1}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    goto :goto_1

    .line 508
    :cond_3
    invoke-virtual {p0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    :goto_1
    return-void
.end method

.method maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V
    .locals 3

    .line 158
    invoke-virtual {p2}, Lgnu/expr/Compilation;->warnUndefinedVariable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x77

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no declaration seen for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1, p3}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    :cond_0
    return-void
.end method

.method protected visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 8

    .line 24
    iget v0, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 36
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/ReferenceExp;

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-gt v1, v5, :cond_1

    .line 39
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/ReferenceExp;

    iget-object v1, v1, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 41
    iget-object v6, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 46
    instance-of v2, v1, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 48
    check-cast v1, Lgnu/expr/LambdaExp;

    .line 49
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move v4, v5

    goto :goto_2

    .line 56
    :cond_1
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v1, v1, Lgnu/expr/QuoteExp;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 58
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    check-cast v1, Lgnu/expr/QuoteExp;

    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-virtual {p1, v4}, Lgnu/expr/ApplyExp;->getArg(I)Lgnu/expr/Expression;

    move-result-object v6

    .line 60
    instance-of v7, v1, Lgnu/expr/PrimProcedure;

    if-eqz v7, :cond_3

    instance-of v7, v6, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_3

    .line 62
    check-cast v1, Lgnu/expr/PrimProcedure;

    .line 63
    check-cast v6, Lgnu/expr/ReferenceExp;

    iget-object v1, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    invoke-static {v1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 65
    iget-object v6, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_3

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 68
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v2

    .line 69
    instance-of v3, v2, Lgnu/expr/ClassExp;

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 72
    check-cast v2, Lgnu/expr/LambdaExp;

    .line 73
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v2

    if-nez v2, :cond_3

    .line 75
    iget-object v2, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    iput-object v2, p1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    .line 76
    iput-object p1, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    const/4 v1, 0x1

    .line 77
    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_2

    .line 78
    aget-object v2, v3, v1

    invoke-virtual {v2, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-nez v4, :cond_4

    .line 86
    iget-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v1, p0, p2}, Lgnu/expr/Expression;->visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    iput-object v1, p1, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 87
    :cond_4
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_5

    if-nez v5, :cond_5

    .line 88
    iget-object v1, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {p0, v1, p2}, Lgnu/expr/FindCapturedVars;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object p2

    iput-object p2, p1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 89
    :cond_5
    iget p2, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    if-le p2, v0, :cond_6

    const/16 p2, 0x8

    .line 90
    invoke-virtual {p1, p2}, Lgnu/expr/ApplyExp;->setFlag(I)V

    :cond_6
    return-object p1
.end method

.method protected bridge synthetic visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3

    .line 120
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lgnu/expr/Expression;

    .line 121
    iget-boolean v0, p1, Lgnu/expr/ClassExp;->explicitInit:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-static {v0, p1}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    goto :goto_1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p1, Lgnu/expr/ClassExp;->firstChild:Lgnu/expr/LambdaExp;

    :goto_0
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "*init*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Lgnu/expr/LambdaExp;->setNeedsStaticLink(Z)V

    .line 127
    :cond_1
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_0

    .line 133
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lgnu/expr/ClassExp;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    sget-object v1, Lgnu/expr/Compilation;->typeClass:Lgnu/bytecode/ClassType;

    if-ne v0, v1, :cond_3

    .line 135
    iget-object p1, p1, Lgnu/expr/ClassExp;->nameDecl:Lgnu/expr/Declaration;

    sget-object v0, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    :cond_3
    return-object p2
.end method

.method protected bridge synthetic visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitClassExp(Lgnu/expr/ClassExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V

    return-void
.end method

.method public visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Void;)V
    .locals 1

    .line 96
    iget-object v0, p1, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 110
    invoke-virtual {p2}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p2, 0x1

    const/16 v0, 0x200

    .line 112
    invoke-virtual {p1, p2, v0}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object p2

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method protected visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 4

    .line 164
    invoke-virtual {p1}, Lgnu/expr/FluidLetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    if-nez v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0, v1, v2}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v2

    .line 170
    iget-object v3, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1, v3, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 171
    invoke-virtual {p0, v2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;)V

    .line 172
    iput-object v2, v0, Lgnu/expr/Declaration;->base:Lgnu/expr/Declaration;

    .line 164
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitFluidLetExp(Lgnu/expr/FluidLetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 2

    .line 277
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 279
    invoke-static {p1, v0}, Lgnu/expr/FindCapturedVars;->checkInlineable(Lgnu/expr/LambdaExp;Ljava/util/Set;)Lgnu/expr/Expression;

    move-result-object v0

    .line 280
    sget-object v1, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v0, v0, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 286
    invoke-virtual {p1, v0}, Lgnu/expr/LambdaExp;->setInlineOnly(Z)V

    .line 287
    iget v1, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/expr/FindCapturedVars;->backJumpPossible:I

    .line 289
    :cond_1
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 9

    .line 180
    iget-object v0, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_3

    .line 190
    iget-object v0, p1, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    .line 191
    array-length v1, v0

    .line 192
    iget-object v2, p1, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    check-cast v2, Lgnu/expr/BeginExp;

    iget-object v2, v2, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 194
    invoke-virtual {p1}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 196
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_3

    if-ge v5, v1, :cond_3

    .line 199
    aget-object v6, v2, v4

    .line 200
    instance-of v7, v6, Lgnu/expr/SetExp;

    if-eqz v7, :cond_2

    .line 202
    check-cast v6, Lgnu/expr/SetExp;

    .line 203
    iget-object v7, v6, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-ne v7, v3, :cond_2

    aget-object v7, v0, v5

    sget-object v8, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    if-ne v7, v8, :cond_2

    invoke-virtual {v6}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    iget-object v6, v6, Lgnu/expr/SetExp;->new_value:Lgnu/expr/Expression;

    .line 208
    instance-of v7, v6, Lgnu/expr/QuoteExp;

    if-nez v7, :cond_0

    instance-of v7, v6, Lgnu/expr/LambdaExp;

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v7

    if-ne v7, v6, :cond_1

    .line 212
    aput-object v6, v0, v5

    .line 213
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 216
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_3
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3

    .line 141
    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 142
    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 143
    iput-object p1, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    const/4 v2, 0x0

    .line 144
    iput-object v2, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    .line 147
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    return-object p1

    :catchall_0
    move-exception p1

    .line 151
    iput-object v0, p0, Lgnu/expr/FindCapturedVars;->currentModule:Lgnu/expr/ModuleExp;

    .line 152
    iput-object v1, p0, Lgnu/expr/FindCapturedVars;->unknownDecls:Ljava/util/Hashtable;

    throw p1
.end method

.method protected bridge synthetic visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitModuleExp(Lgnu/expr/ModuleExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 3

    .line 471
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object p2

    if-nez p2, :cond_0

    .line 474
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object p2

    .line 476
    invoke-virtual {p1, p2}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    :cond_0
    const-wide/32 v0, 0x10000

    .line 478
    invoke-virtual {p2, v0, v1}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->isProcedureName()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lgnu/expr/Compilation;->resolve(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 481
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/FindCapturedVars;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v0, v1, p1}, Lgnu/expr/FindCapturedVars;->maybeWarnNoDeclarationSeen(Ljava/lang/Object;Lgnu/expr/Compilation;Lgnu/text/SourceLocator;)V

    .line 484
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    return-object p1
.end method

.method protected bridge synthetic visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 2

    .line 526
    iget-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    if-nez v0, :cond_0

    .line 529
    invoke-virtual {p1}, Lgnu/expr/SetExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/expr/SetExp;->isFuncDef()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/FindCapturedVars;->allocUnboundDecl(Ljava/lang/Object;Z)Lgnu/expr/Declaration;

    move-result-object v0

    .line 530
    iput-object v0, p1, Lgnu/expr/SetExp;->binding:Lgnu/expr/Declaration;

    .line 532
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 534
    invoke-virtual {p1}, Lgnu/expr/SetExp;->isDefining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 535
    invoke-static {v0}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 536
    :cond_1
    invoke-virtual {p1}, Lgnu/expr/SetExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lgnu/expr/FindCapturedVars;->capture(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 538
    :cond_2
    invoke-super {p0, p1, p2}, Lgnu/expr/ExpExpVisitor;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/expr/Expression;

    return-object p1
.end method

.method protected bridge synthetic visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitSetExp(Lgnu/expr/SetExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;
    .locals 1

    .line 513
    invoke-virtual {p1}, Lgnu/expr/ThisExp;->isForContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lgnu/expr/FindCapturedVars;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/expr/LambdaExp;->setImportsLexVars()V

    return-object p1

    .line 521
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitReferenceExp(Lgnu/expr/ReferenceExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lgnu/expr/FindCapturedVars;->visitThisExp(Lgnu/expr/ThisExp;Ljava/lang/Void;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
