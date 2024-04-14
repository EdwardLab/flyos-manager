.class public Lgnu/kawa/slib/pregexp$frame;
.super Lgnu/expr/ModuleBody;
.source "pregexp.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/pregexp;->pregexpMatchPositionsAux(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\npregexp.scm\nScheme\n*S Scheme\n*F\n+ 1 pregexp.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm\n*L\n460#1,174:460\n*E\n"
.end annotation


# instance fields
.field backrefs:Ljava/lang/Object;

.field case$Mnsensitive$Qu:Ljava/lang/Object;

.field identity:Lgnu/mapping/Procedure;

.field n:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field sn:Ljava/lang/Object;

.field start:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/pregexp;->Lit112:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xf

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/pregexp.scm:460"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    return-void
.end method

.method public static lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static lambda4()Ljava/lang/Boolean;
    .locals 1

    .line 463
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    invoke-static {p2}, Lgnu/kawa/slib/pregexp$frame;->lambda2identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "substring"

    new-instance v1, Lgnu/kawa/slib/pregexp$frame0;

    invoke-direct {v1}, Lgnu/kawa/slib/pregexp$frame0;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/pregexp$frame0;->staticLink:Lgnu/kawa/slib/pregexp$frame;

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    iput-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iput-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    .line 465
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_1

    .line 467
    sget-object p1, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->start:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_0

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_0
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_1
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 469
    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_3

    .line 471
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_2

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_2
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_3
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 473
    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit23:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_4

    .line 474
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_4
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 475
    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit26:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_6

    .line 476
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_5

    .line 477
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 478
    :cond_5
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_6
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 479
    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit28:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_8

    .line 480
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lgnu/kawa/slib/pregexp;->isPregexpAtWordBoundary(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_7

    .line 481
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 482
    :cond_7
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 483
    :cond_8
    iget-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/characters;->isChar(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x2

    const-string p3, "string-ref"

    const/4 p4, 0x1

    if-eqz p1, :cond_9

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_c

    goto :goto_0

    :cond_9
    if-eqz p1, :cond_c

    .line 485
    :goto_0
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_a

    sget-object p1, Lkawa/lib/characters;->char$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_1

    :cond_a
    sget-object p1, Lkawa/lib/rnrs/unicode;->char$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 486
    :goto_1
    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_0
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_1
    move-object v2, p4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p2

    invoke-static {p2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p2

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_b

    .line 487
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {p3, p4, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_b
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :catch_0
    move-exception p1

    .line 486
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p3, p2, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, p3, p4, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 488
    :cond_c
    iget-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    add-int/2addr p1, p4

    and-int/2addr p1, p4

    if-eqz p1, :cond_d

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_f

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_f

    .line 489
    :goto_2
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_2
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_3
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-static {p1, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1, p2}, Lgnu/kawa/slib/pregexp;->isPregexpCheckIfInCharClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_e

    .line 491
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {p3, p4, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_e
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :catch_2
    move-exception p1

    .line 490
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p3, p2, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, p3, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 492
    :cond_f
    iget-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_10

    sget-object p1, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_15

    goto :goto_3

    :cond_10
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v2, :cond_15

    goto :goto_3

    :cond_11
    if-eqz p1, :cond_15

    .line 493
    :goto_3
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_4
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_5

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    :try_start_5
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_4

    invoke-static {p1, p2}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    .line 494
    iget-object p2, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, p3, :cond_12

    sget-object p2, Lkawa/lib/characters;->char$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    goto :goto_4

    :cond_12
    sget-object p2, Lkawa/lib/rnrs/unicode;->char$Mnci$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    .line 495
    :goto_4
    sget-object p3, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, p4, :cond_13

    .line 496
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    sget-object p3, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p3, p4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_14

    goto :goto_5

    .line 495
    :cond_13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, p1, :cond_14

    .line 497
    :goto_5
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    sget-object p3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit8:Lgnu/math/IntNum;

    invoke-virtual {p3, p4, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_14
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :catch_4
    move-exception p1

    .line 493
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p3, p2, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p2, p3, p4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 497
    :cond_15
    iget-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_32

    .line 499
    sget-object p1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit83:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_17

    .line 501
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_16

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_16
    new-array p1, p4, [Ljava/lang/Object;

    .line 502
    sget-object p2, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object p2, p1, p3

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_17
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit82:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_19

    .line 504
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_18

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 505
    :cond_18
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgnu/kawa/slib/pregexp$frame0;->lambda5loupOneOfChars(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_19
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1b

    .line 511
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_1a

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 512
    :cond_1a
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_1b
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1c

    .line 516
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda6loupSeq(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_1c
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_1d

    .line 523
    sget-object p1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lgnu/kawa/slib/pregexp$frame0;->lambda7loupOr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_1d
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v3, Lgnu/kawa/slib/pregexp;->Lit20:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v2, p1, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_20

    .line 531
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->backrefs:Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object v3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lgnu/kawa/slib/pregexp;->pregexpListRef(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 533
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x3

    if-eq p1, v2, :cond_1e

    sget-object p3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {p3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    :cond_1e
    new-array p1, v3, [Ljava/lang/Object;

    .line 535
    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object v2, p1, p3

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit102:Lgnu/mapping/SimpleSymbol;

    aput-object p3, p1, p4

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    aput-object p3, p1, p2

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 538
    :goto_6
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p3, :cond_1f

    .line 539
    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    :try_start_6
    check-cast p3, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_8

    sget-object p4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 540
    invoke-virtual {p4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    :try_start_7
    move-object v2, p4

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    sget-object p4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {p4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :try_start_8
    move-object p4, p1

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    invoke-static {p3, p2, p1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/slib/pregexp$frame;->s:Ljava/lang/Object;

    iget-object v4, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object v6, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    iget-object v7, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-static/range {v2 .. v7}, Lgnu/kawa/slib/pregexp;->pregexpStringMatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :catch_6
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, p2, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_8
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 542
    :cond_1f
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_20
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit100:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_21

    .line 544
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_21
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit103:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_23

    .line 550
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object p4, Lgnu/kawa/slib/pregexp;->lambda$Fn6:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 552
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_22

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_22
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_23
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit104:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_25

    .line 555
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object p4, Lgnu/kawa/slib/pregexp;->lambda$Fn7:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 557
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_24

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_24
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_25
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit105:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_27

    .line 559
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object p2, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 560
    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 562
    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object p4, Lgnu/kawa/slib/pregexp;->Lit106:Lgnu/lists/PairWithPosition;

    sget-object v0, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 563
    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {p3, p4, v0, v2}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    sget-object p4, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v2, Lgnu/kawa/slib/pregexp;->lambda$Fn8:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p3, p4, v0, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 565
    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, p1, :cond_26

    .line 566
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_26
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_27
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit107:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_29

    .line 568
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object p2, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 569
    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    .line 571
    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit5:Lgnu/mapping/SimpleSymbol;

    sget-object p4, Lgnu/kawa/slib/pregexp;->Lit108:Lgnu/lists/PairWithPosition;

    sget-object v0, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    .line 572
    iget-object v2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lgnu/kawa/slib/pregexp;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-static {p3, p4, v0, v2}, Lgnu/lists/LList;->list4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    sget-object p4, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object v2, Lgnu/kawa/slib/pregexp;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p3, p4, v0, v2}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 574
    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    iput-object p2, p0, Lgnu/kawa/slib/pregexp$frame;->sn:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, p1, :cond_28

    .line 575
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_28
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_29
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit109:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2b

    .line 577
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, p0, Lgnu/kawa/slib/pregexp$frame;->identity:Lgnu/mapping/Procedure;

    sget-object p4, Lgnu/kawa/slib/pregexp;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 579
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_2a

    .line 580
    sget-object p2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->sk:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    .line 581
    :cond_2a
    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_2b
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2d

    goto :goto_7

    :cond_2c
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit61:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_2d

    .line 583
    :goto_7
    iget-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->old:Ljava/lang/Object;

    .line 584
    sget-object p1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 585
    sget-object p2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    sget-object p3, Lgnu/kawa/slib/pregexp;->Lit60:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lgnu/kawa/slib/pregexp$frame;->case$Mnsensitive$Qu:Ljava/lang/Object;

    .line 586
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn11:Lgnu/expr/ModuleMethod;

    iget-object p4, v1, Lgnu/kawa/slib/pregexp$frame0;->lambda$Fn12:Lgnu/expr/ModuleMethod;

    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/kawa/slib/pregexp$frame;->lambda3sub(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_a

    :cond_2d
    sget-object p2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 499
    sget-object v0, Lgnu/kawa/slib/pregexp;->Lit68:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {p2, p1, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_31

    .line 594
    sget-object p1, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, -0x2

    :try_start_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_a

    if-eq p1, v0, :cond_2e

    const/4 p1, 0x1

    goto :goto_8

    :cond_2e
    const/4 p1, 0x0

    :goto_8
    add-int/2addr p1, p4

    and-int/2addr p1, p4

    iput-boolean p1, v1, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    .line 595
    sget-object p1, Lkawa/lib/lists;->caddr:Lgnu/expr/GenericProc;

    iget-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->p:Ljava/lang/Object;

    .line 596
    sget-object p1, Lkawa/lib/lists;->cadddr:Lgnu/expr/GenericProc;

    iget-object v0, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    .line 597
    iget-boolean p1, v1, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    if-eqz p1, :cond_30

    iget-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->q:Ljava/lang/Object;

    :try_start_a
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_9

    if-eq p1, p2, :cond_2f

    const/4 p3, 0x1

    :cond_2f
    add-int/2addr p3, p4

    and-int/lit8 p1, p3, 0x1

    goto :goto_9

    :catch_9
    move-exception p3

    new-instance p4, Lgnu/mapping/WrongType;

    const-string v0, "could-loop-infinitely?"

    invoke-direct {p4, p3, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :cond_30
    iget-boolean p1, v1, Lgnu/kawa/slib/pregexp$frame0;->maximal$Qu:Z

    :goto_9
    iput-boolean p1, v1, Lgnu/kawa/slib/pregexp$frame0;->could$Mnloop$Mninfinitely$Qu:Z

    .line 598
    sget-object p1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    sget-object p2, Lkawa/lib/lists;->cddddr:Lgnu/expr/GenericProc;

    iget-object p3, v1, Lgnu/kawa/slib/pregexp$frame0;->re$1:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Lgnu/kawa/slib/pregexp$frame0;->re:Ljava/lang/Object;

    .line 599
    sget-object p1, Lgnu/kawa/slib/pregexp;->Lit73:Lgnu/math/IntNum;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Lgnu/kawa/slib/pregexp$frame0;->lambda8loupP(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_a

    :catch_a
    move-exception p3

    .line 594
    new-instance p4, Lgnu/mapping/WrongType;

    const-string v0, "maximal?"

    invoke-direct {p4, p3, v0, p2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p4

    :cond_31
    new-array p1, p4, [Ljava/lang/Object;

    .line 631
    sget-object p2, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object p2, p1, p3

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_a

    :cond_32
    sget-object p1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 632
    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->i:Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/pregexp$frame;->n:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_33

    sget-object p1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object p2, v1, Lgnu/kawa/slib/pregexp$frame0;->fk:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_a

    :cond_33
    new-array p1, p4, [Ljava/lang/Object;

    .line 633
    sget-object p2, Lgnu/kawa/slib/pregexp;->Lit101:Lgnu/mapping/SimpleSymbol;

    aput-object p2, p1, p3

    invoke-static {p1}, Lgnu/kawa/slib/pregexp;->pregexpError$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_a
    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 460
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method
