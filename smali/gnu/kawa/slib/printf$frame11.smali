.class public Lgnu/kawa/slib/printf$frame11;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n307#1,99:307\n*E\n"
.end annotation


# instance fields
.field fc:Ljava/lang/Object;

.field format$Mnreal:Lgnu/mapping/Procedure;

.field final lambda$Fn17:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/printf$frame10;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xd

    const/16 v3, -0xffc

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/16 v3, -0xffd

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm:401"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 401
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    aget-object p1, p2, v4

    aget-object v0, p2, v3

    aget-object v1, p2, v2

    array-length v2, p2

    sub-int/2addr v2, v5

    new-array v6, v2, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_1

    invoke-virtual {p0, p1, v0, v1, v6}, Lgnu/kawa/slib/printf$frame11;->lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v2, 0x3

    aget-object v3, p2, v3

    aput-object v3, v6, v2

    goto :goto_0

    .line 386
    :cond_2
    aget-object v8, p2, v4

    aget-object v9, p2, v3

    aget-object v10, p2, v2

    aget-object v11, p2, v5

    array-length p1, p2

    add-int/lit8 p1, p1, -0x4

    new-array v12, p1, [Ljava/lang/Object;

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    add-int/lit8 v0, p1, 0x4

    aget-object v0, p2, v0

    aput-object v0, v12, p1

    goto :goto_1
.end method

.method public lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "substring"

    const/4 v1, 0x0

    .line 308
    :try_start_0
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_a

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 309
    iget-object v3, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v2, p2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v3, :cond_0

    move-object v3, p2

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    invoke-static {p1, v2, v3}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 310
    sget-object v2, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v2, p2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, ""

    const-string v5, "zero?"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v3, :cond_5

    .line 311
    :try_start_1
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_7

    invoke-static {p3}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    goto :goto_1

    :cond_1
    sget-object p3, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_2
    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    invoke-static {v2, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v2

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    invoke-static {p3, v2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 312
    sget-object p3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    goto :goto_1

    .line 313
    :cond_2
    sget-object p3, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :goto_1
    new-array v2, v6, [Ljava/lang/Object;

    .line 314
    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    aput-object v3, v2, v1

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v1, v3, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v7

    invoke-static {v2}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 315
    :try_start_3
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3

    invoke-static {v1, p3, v2}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p3

    .line 316
    :try_start_6
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    check-cast p1, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_0

    invoke-static {p1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {v1, p2, p1}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 319
    invoke-static {p1, v4}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object p2, p2, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p2, v0, :cond_4

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    :goto_2
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_3

    :cond_4
    const-string p2, "."

    invoke-static {p2, p1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    :goto_3
    invoke-static {p3, p1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    goto/16 :goto_6

    :catch_0
    move-exception p2

    .line 317
    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "string-length"

    invoke-direct {p3, p2, v0, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_1
    move-exception p1

    .line 316
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_2
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_3
    move-exception p1

    .line 315
    new-instance p3, Lgnu/mapping/WrongType;

    const/4 v1, 0x3

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_4
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p2, v0, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_6
    move-exception p2

    .line 312
    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "string-ref"

    invoke-direct {p3, p2, v0, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_7
    move-exception p1

    .line 311
    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v5, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 319
    :cond_5
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_9
    check-cast v0, Ljava/lang/Number;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {v0}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v0

    const-string v2, "0."

    const-string v3, "0"

    if-eqz v0, :cond_7

    iget-object p1, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object p1, p1, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, p2, :cond_6

    goto :goto_4

    :cond_6
    move-object v2, v3

    .line 324
    :goto_4
    invoke-static {v2}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    goto :goto_6

    .line 325
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v0, :cond_a

    invoke-static {p1, v4}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-static {v3}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p3

    goto :goto_5

    :cond_8
    if-eqz p3, :cond_9

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 310
    :cond_a
    :goto_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v0, :cond_b

    move-object p1, p3

    goto :goto_6

    :cond_b
    new-array p3, v6, [Ljava/lang/Object;

    iget-object v0, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    aput-object v0, p3, v1

    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 328
    sget-object v1, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v0, v1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p3, v7

    invoke-static {p3}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :try_start_a
    move-object p3, p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_8

    sget-object p3, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-static {p2, p3}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lgnu/lists/LList;->list3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    :goto_6
    return-object p1

    :catch_8
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p3, p1, v0, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :catch_9
    move-exception p1

    .line 323
    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v5, v7, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_a
    move-exception p2

    .line 309
    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "stdio:round-string"

    invoke-direct {p3, p2, v0, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3
.end method

.method public lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v1, "substring"

    const/4 v8, 0x0

    move-object/from16 v0, p5

    .line 386
    invoke-static {v0, v8}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 387
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x2

    if-eqz v2, :cond_1b

    .line 388
    sget-object v0, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    :try_start_0
    move-object v2, v3

    check-cast v2, Lgnu/text/Char;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_d

    invoke-static {v0, v2}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    const-string v2, " "

    const-string v3, "+"

    const-string v6, "-"

    const-string v11, ""

    if-eqz v0, :cond_0

    move-object v0, v6

    goto :goto_0

    .line 390
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v12, p1

    if-eq v12, v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v12, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v11

    .line 391
    :goto_0
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v14, "negative?"

    if-eq v12, v13, :cond_3

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_4

    goto :goto_1

    :cond_3
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_4

    .line 392
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_9

    .line 344
    :cond_4
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_5

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_6

    goto :goto_2

    :cond_5
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_6

    .line 393
    :goto_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v4, v5, v1}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    :cond_6
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_7

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_8

    goto/16 :goto_6

    :cond_7
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_8

    goto/16 :goto_6

    .line 354
    :cond_8
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_9

    move-object v2, v11

    goto :goto_3

    .line 373
    :cond_9
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 391
    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_1a

    .line 359
    :goto_3
    :try_start_1
    invoke-static/range {p4 .. p4}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_c

    invoke-static {v12}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 360
    sget-object v12, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v13, v5, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_4

    .line 361
    :cond_a
    sget-object v12, Lgnu/kawa/functions/DivideOp;->quotient:Lgnu/kawa/functions/DivideOp;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v13, v5, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v15, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v12, v13, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 363
    :goto_4
    sget-object v13, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v15, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v8, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v10, v12, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 363
    sget-object v10, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v10}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v15, v8, v10}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_2
    move-object v10, v8

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_b

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v8, :cond_c

    .line 362
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_c
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    :goto_5
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v8, :cond_d

    .line 366
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v3, Lgnu/kawa/functions/MultiplyOp;->$St:Lgnu/kawa/functions/MultiplyOp;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    invoke-virtual {v3, v6, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 367
    iget-object v3, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    new-array v5, v9, [Ljava/lang/Object;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    const/4 v8, 0x0

    aput-object v6, v5, v8

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v10, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v10, v10, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v6, v10, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x1

    aput-object v6, v5, v10

    invoke-static {v5}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v3, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    new-array v3, v9, [Ljava/lang/Object;

    .line 368
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v4, v1, v5}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v8

    sget-object v1, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 358
    sget-object v5, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    invoke-virtual {v4, v12, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_3
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    invoke-static {v1, v4}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {v3}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    :catch_0
    move-exception v0

    .line 371
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "vector-ref"

    invoke-direct {v1, v0, v2, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 347
    :cond_d
    :goto_6
    iget-object v2, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    :try_start_4
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_a

    if-eq v2, v8, :cond_e

    const/4 v2, 0x1

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    :goto_7
    const/4 v8, 0x1

    add-int/2addr v2, v8

    and-int/2addr v2, v8

    .line 348
    iget-object v8, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v10, v8, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v8, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 349
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iget-object v13, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v13, v13, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v10, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iget-object v12, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v8, v10, v5, v12}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v10, :cond_10

    .line 350
    iget-object v1, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v3, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v6, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v6, v6, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v3, v6, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 351
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    invoke-virtual {v7, v4, v5, v1}, Lgnu/kawa/slib/printf$frame11;->lambda29f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    .line 353
    :cond_10
    iget-object v8, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v12, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v10, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    iput-object v10, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    if-eqz v2, :cond_11

    .line 354
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_11
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 331
    :goto_9
    :try_start_5
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_9

    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 332
    sget-object v10, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iget-object v12, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v12, v12, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    invoke-virtual {v8, v10, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v10, :cond_12

    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    :cond_12
    invoke-static {v4, v8, v2}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 333
    sget-object v4, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_6
    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_8

    const/4 v10, 0x0

    invoke-static {v8, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v8

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    invoke-static {v4, v8}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    goto :goto_a

    :cond_13
    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 334
    :goto_a
    :try_start_7
    move-object v8, v2

    check-cast v8, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    :try_start_8
    move-object v12, v2

    check-cast v12, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_6

    invoke-static {v12}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v12

    invoke-static {v8, v10, v12}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 336
    invoke-static {v4}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_b

    :cond_14
    sget-object v10, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v12, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v10, v5, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_b
    :try_start_9
    check-cast v2, Ljava/lang/CharSequence;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_5

    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v9, 0x1

    add-int/2addr v4, v9

    invoke-static {v2, v1, v4}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 339
    invoke-static {v8, v11}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v7, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v2, v4, :cond_16

    goto :goto_c

    :cond_15
    if-eqz v2, :cond_16

    :goto_c
    move-object v2, v11

    goto :goto_d

    :cond_16
    const-string v2, "."

    :goto_d
    iget-object v4, v7, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    :try_start_b
    check-cast v4, Lgnu/text/Char;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_3

    invoke-static {v4}, Lkawa/lib/rnrs/unicode;->isCharUpperCase(Lgnu/text/Char;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "E"

    goto :goto_e

    :cond_17
    const-string v4, "e"

    .line 342
    :goto_e
    :try_start_c
    invoke-static {v5}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v9
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_2

    invoke-static {v9}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v9

    if-eqz v9, :cond_18

    move-object v3, v6

    .line 343
    :cond_18
    invoke-static {v1, v2, v8, v4, v3}, Lgnu/lists/LList;->chain4(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 344
    sget-object v4, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    sget-object v6, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, v5, v6}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_19

    const-string v11, "0"

    :cond_19
    invoke-static {v2, v11}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    :try_start_d
    check-cast v5, Ljava/lang/Number;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_d} :catch_1

    invoke-static {v5}, Lkawa/lib/numbers;->abs(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/lists/LList;->chain1(Lgnu/lists/Pair;Ljava/lang/Object;)Lgnu/lists/Pair;

    goto/16 :goto_f

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 345
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "abs"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_2
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    .line 343
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v14, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_3
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    .line 342
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-upper-case?"

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 338
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v1, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_5
    move-exception v0

    const/4 v3, 0x1

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v1, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_6
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    .line 335
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v4, "string-length"

    invoke-direct {v0, v1, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_7
    move-exception v0

    const/4 v3, 0x1

    move-object v4, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v4, v1, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_8
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    .line 333
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v4, "string-ref"

    invoke-direct {v0, v1, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 332
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "stdio:round-string"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 347
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v3, "strip-0s"

    const/4 v4, -0x2

    invoke-direct {v0, v1, v3, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :catch_b
    move-exception v0

    const/4 v4, -0x2

    .line 363
    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "x"

    invoke-direct {v1, v0, v2, v4, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_c
    move-exception v0

    move-object v1, v0

    .line 359
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v14, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 396
    :cond_1a
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_f
    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 389
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char=?"

    invoke-direct {v0, v1, v2, v9, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_1b
    move-object/from16 v12, p1

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-array v6, v10, [Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 397
    invoke-virtual/range {v1 .. v6}, Lgnu/kawa/slib/printf$frame11;->lambda30formatReal$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v10

    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 398
    iget-object v2, v7, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    sget-object v0, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    aput-object v0, v8, v9

    invoke-static {v8}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method lambda31$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    .line 401
    invoke-static {p4, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p4

    .line 402
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 403
    sget-object v3, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    aput-object v5, v4, v0

    .line 404
    iget-object v0, p0, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iget-object v0, v0, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 p1, 0x3

    aput-object p2, v4, p1

    const/4 p1, 0x4

    aput-object p3, v4, p1

    const/4 p1, 0x5

    aput-object p4, v4, p1

    .line 405
    invoke-virtual {v3, v4}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    .line 386
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 401
    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 386
    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2
.end method
