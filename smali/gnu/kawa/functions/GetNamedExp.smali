.class Lgnu/kawa/functions/GetNamedExp;
.super Lgnu/expr/ApplyExp;
.source "CompileNamedPart.java"


# static fields
.field static final castDecl:Lgnu/expr/Declaration;

.field static final fieldDecl:Lgnu/expr/Declaration;

.field static final instanceOfDecl:Lgnu/expr/Declaration;

.field static final invokeDecl:Lgnu/expr/Declaration;

.field static final invokeStaticDecl:Lgnu/expr/Declaration;

.field static final makeDecl:Lgnu/expr/Declaration;

.field static final staticFieldDecl:Lgnu/expr/Declaration;


# instance fields
.field public combinedName:Ljava/lang/String;

.field kind:C

.field methods:[Lgnu/expr/PrimProcedure;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gnu.kawa.reflect.SlotGet"

    const-string v1, "field"

    .line 478
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/GetNamedExp;->fieldDecl:Lgnu/expr/Declaration;

    const-string v1, "staticField"

    .line 481
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->staticFieldDecl:Lgnu/expr/Declaration;

    const-string v0, "gnu.kawa.reflect.Invoke"

    const-string v1, "make"

    .line 484
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    const-string v1, "invoke"

    .line 487
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v1

    sput-object v1, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    const-string v1, "invokeStatic"

    .line 490
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    const-string v0, "kawa.standard.Scheme"

    const-string v1, "instanceOf"

    .line 493
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    const-string v0, "gnu.kawa.functions.Convert"

    const-string v1, "as"

    .line 496
    invoke-static {v0, v1}, Lgnu/expr/Declaration;->getDeclarationFromStatic(Ljava/lang/String;Ljava/lang/String;)Lgnu/expr/Declaration;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .locals 1

    .line 400
    sget-object v0, Lgnu/kawa/functions/GetNamedPart;->getNamedPart:Lgnu/kawa/functions/GetNamedPart;

    invoke-direct {p0, v0, p1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lgnu/kawa/functions/GetNamedExp;->combinedName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 386
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    const/4 v3, 0x0

    .line 388
    invoke-virtual {v0, v1, v3, v2}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_0

    .line 391
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    return-void

    .line 395
    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ApplyExp;->apply(Lgnu/mapping/CallContext;)V

    return-void
.end method

.method protected setProcedureKind(C)Lgnu/kawa/functions/GetNamedExp;
    .locals 1

    .line 411
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/functions/GetNamedExp;->type:Lgnu/bytecode/Type;

    .line 412
    iput-char p1, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    return-object p0
.end method

.method public side_effects()Z
    .locals 3

    .line 471
    iget-char v0, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/4 v1, 0x0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x43

    if-eq v0, v2, :cond_2

    const/16 v2, 0x49

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d

    if-ne v0, v2, :cond_1

    .line 474
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgnu/expr/Expression;->side_effects()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .locals 7

    .line 419
    invoke-virtual {p0}, Lgnu/kawa/functions/GetNamedExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object p4

    const/4 v0, 0x0

    .line 420
    aget-object v1, p4, v0

    .line 421
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    .line 423
    iget-char v3, p0, Lgnu/kawa/functions/GetNamedExp;->kind:C

    const/16 v4, 0x43

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_4

    const/16 v4, 0x49

    if-eq v3, v4, :cond_3

    const/16 v4, 0x53

    if-eq v3, v4, :cond_2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_1

    const/16 p4, 0x4e

    if-eq v3, p4, :cond_0

    return-object p1

    .line 433
    :cond_0
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->makeDecl:Lgnu/expr/Declaration;

    .line 434
    array-length v3, v2

    add-int/2addr v3, v6

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 435
    array-length v4, v2

    invoke-static {v2, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    aput-object v1, v3, v0

    goto :goto_0

    .line 426
    :cond_1
    sget-object v1, Lgnu/kawa/functions/GetNamedExp;->invokeDecl:Lgnu/expr/Declaration;

    .line 427
    array-length v3, v2

    add-int/2addr v3, v5

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 428
    aget-object v4, p4, v0

    aput-object v4, v3, v0

    .line 429
    aget-object p4, p4, v6

    aput-object p4, v3, v6

    .line 430
    array-length p4, v2

    invoke-static {v2, v0, v3, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v1

    goto :goto_0

    .line 453
    :cond_2
    sget-object v3, Lgnu/kawa/functions/GetNamedExp;->invokeStaticDecl:Lgnu/expr/Declaration;

    .line 454
    array-length v4, v2

    add-int/2addr v4, v5

    new-array v4, v4, [Lgnu/expr/Expression;

    .line 455
    aput-object v1, v4, v0

    .line 456
    aget-object p4, p4, v6

    aput-object p4, v4, v6

    .line 457
    array-length p4, v2

    invoke-static {v2, v0, v4, v5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v3

    move-object v3, v4

    goto :goto_0

    .line 439
    :cond_3
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->instanceOfDecl:Lgnu/expr/Declaration;

    .line 440
    array-length v3, v2

    add-int/2addr v3, v6

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 441
    array-length v4, v2

    sub-int/2addr v4, v6

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 442
    aget-object v2, v2, v0

    aput-object v2, v3, v0

    .line 443
    aput-object v1, v3, v6

    goto :goto_0

    .line 446
    :cond_4
    sget-object p4, Lgnu/kawa/functions/GetNamedExp;->castDecl:Lgnu/expr/Declaration;

    .line 447
    array-length v3, v2

    add-int/2addr v3, v6

    new-array v3, v3, [Lgnu/expr/Expression;

    .line 448
    array-length v4, v2

    sub-int/2addr v4, v6

    invoke-static {v2, v6, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    aput-object v1, v3, v0

    .line 450
    aget-object v0, v2, v0

    aput-object v0, v3, v6

    .line 462
    :goto_0
    new-instance v0, Lgnu/expr/ApplyExp;

    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, p4}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    invoke-direct {v0, v1, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 463
    invoke-virtual {v0, p1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 464
    invoke-virtual {p2, v0, p3}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object p1

    return-object p1
.end method
