.class public Lkawa/lang/SyntaxTemplate;
.super Ljava/lang/Object;
.source "SyntaxTemplate.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final BUILD_CONS:I = 0x1

.field static final BUILD_DOTS:I = 0x5

.field static final BUILD_LIST1:I = 0x8

.field static final BUILD_LITERAL:I = 0x4

.field static final BUILD_MISC:I = 0x0

.field static final BUILD_NIL:I = 0x10

.field static final BUILD_SYNTAX:I = 0x18

.field static final BUILD_VAR:I = 0x2

.field static final BUILD_VAR_CAR:I = 0x3

.field static final BUILD_VECTOR:I = 0x28

.field static final BUILD_WIDE:I = 0x7

.field static final dots3:Ljava/lang/String; = "..."


# instance fields
.field literal_values:[Ljava/lang/Object;

.field max_nesting:I

.field patternNesting:Ljava/lang/String;

.field template_program:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Lkawa/lang/Translator;)V
    .locals 11

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    .line 164
    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v0, v0, Lkawa/lang/PatternScope;->patternNesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 167
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 169
    new-instance v7, Ljava/util/IdentityHashMap;

    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v6, v10

    move-object v9, p3

    .line 173
    invoke-virtual/range {v1 .. v9}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 176
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 177
    invoke-virtual {v10, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 159
    iput p4, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    return-void
.end method

.method private get_count(Ljava/lang/Object;I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 377
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    aget v1, p3, v0

    aget-object p1, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 379
    array-length p1, p1

    return p1
.end method

.method static indexOf(Ljava/util/Vector;Ljava/lang/Object;)I
    .locals 3

    .line 364
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 367
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p8

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    .line 218
    :goto_0
    instance-of v0, v14, Lkawa/lang/SyntaxForm;

    if-eqz v0, :cond_0

    .line 220
    move-object v15, v14

    check-cast v15, Lkawa/lang/SyntaxForm;

    .line 221
    invoke-interface {v15}, Lkawa/lang/SyntaxForm;->getDatum()Ljava/lang/Object;

    move-result-object v14

    goto :goto_0

    .line 224
    :cond_0
    instance-of v0, v14, Lgnu/lists/Pair;

    const/16 v16, -0x2

    if-nez v0, :cond_1

    instance-of v1, v14, Lgnu/lists/FVector;

    if-eqz v1, :cond_3

    .line 226
    :cond_1
    move-object/from16 v1, p6

    check-cast v1, Ljava/util/IdentityHashMap;

    .line 227
    invoke-virtual {v1, v14}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "self-referential (cyclic) syntax template"

    .line 230
    invoke-virtual {v13, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    return v16

    .line 233
    :cond_2
    invoke-virtual {v1, v14, v14}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v17, 0x3

    const/16 v8, 0x8

    const-string v6, "..."

    if-eqz v0, :cond_10

    .line 240
    move-object v0, v14

    check-cast v0, Lgnu/lists/Pair;

    .line 242
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 243
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-virtual {v13, v1, v6}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkawa/lang/Translator;->stripSyntax(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 249
    instance-of v3, v2, Lgnu/lists/Pair;

    if-eqz v3, :cond_4

    .line 251
    check-cast v2, Lgnu/lists/Pair;

    .line 252
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_4

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_4

    move-object v14, v6

    move-object/from16 v22, v14

    move-object v5, v12

    const/4 v0, -0x1

    const/16 v19, 0x8

    goto/16 :goto_8

    .line 260
    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 263
    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 266
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    const/16 v18, 0x0

    .line 267
    :goto_1
    instance-of v0, v3, Lgnu/lists/Pair;

    const/4 v2, 0x5

    if-eqz v0, :cond_6

    .line 269
    move-object v0, v3

    check-cast v0, Lgnu/lists/Pair;

    .line 270
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v13, v7, v6}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 273
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    .line 274
    invoke-virtual {v10, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    :goto_2
    add-int v7, v11, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    const/16 v20, 0x5

    move-object v2, v15

    move-object v11, v3

    move-object/from16 v3, p3

    move-object/from16 p2, v14

    move v14, v4

    move v4, v7

    move/from16 v21, v5

    move-object/from16 v5, p5

    move-object/from16 v22, v6

    move-object/from16 v6, p6

    move/from16 v23, v7

    const/4 v12, -0x1

    move/from16 v7, v19

    const/16 v19, 0x8

    move-object/from16 v8, p8

    .line 276
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v8

    .line 280
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v11, v0, :cond_7

    .line 282
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    move/from16 v7, v21

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    .line 283
    invoke-virtual {v10, v7, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v11, v7

    move/from16 v7, p7

    move v15, v8

    move-object/from16 v8, p8

    .line 285
    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v0

    goto :goto_3

    :cond_7
    move v15, v8

    move/from16 v11, v21

    const/4 v0, -0x2

    :goto_3
    if-lez v18, :cond_a

    if-gez v15, :cond_8

    const-string v1, "... follows template with no suitably-nested pattern variable"

    .line 292
    invoke-virtual {v13, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_8
    :goto_4
    add-int/lit8 v18, v18, -0x1

    if-ltz v18, :cond_a

    shl-int/lit8 v1, v15, 0x3

    add-int/lit8 v1, v1, 0x5

    int-to-char v1, v1

    add-int v5, v11, v18

    add-int/lit8 v5, v5, 0x1

    .line 296
    invoke-virtual {v10, v5, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 298
    iget v1, v9, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    move/from16 v2, v23

    if-lt v2, v1, :cond_9

    .line 299
    iput v2, v9, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    :cond_9
    move/from16 v23, v2

    goto :goto_4

    :cond_a
    if-ltz v15, :cond_b

    return v15

    :cond_b
    if-ltz v0, :cond_c

    return v0

    :cond_c
    if-eq v15, v12, :cond_f

    if-ne v0, v12, :cond_d

    goto :goto_5

    :cond_d
    if-eqz p7, :cond_e

    return v16

    :cond_e
    move-object/from16 v5, p5

    const/4 v0, -0x1

    .line 313
    invoke-virtual {v5, v14}, Ljava/util/Vector;->setSize(I)V

    .line 314
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object/from16 v14, p2

    goto/16 :goto_8

    :cond_f
    :goto_5
    const/4 v0, -0x1

    return v0

    :cond_10
    move-object/from16 v22, v6

    move-object v5, v12

    const/4 v0, -0x1

    const/16 v19, 0x8

    .line 316
    instance-of v1, v14, Lgnu/lists/FVector;

    if-eqz v1, :cond_11

    const/16 v0, 0x28

    .line 318
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 319
    check-cast v14, Lgnu/lists/FVector;

    invoke-static {v14}, Lgnu/lists/LList;->makeList(Ljava/util/List;)Lgnu/lists/LList;

    move-result-object v1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lkawa/lang/SyntaxTemplate;->convert_template(Ljava/lang/Object;Lkawa/lang/SyntaxForm;Ljava/lang/StringBuffer;ILjava/util/Vector;Ljava/lang/Object;ZLkawa/lang/Translator;)I

    move-result v0

    return v0

    .line 323
    :cond_11
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v14, v1, :cond_12

    const/16 v0, 0x10

    .line 325
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return v16

    .line 328
    :cond_12
    instance-of v1, v14, Lgnu/mapping/Symbol;

    if-eqz v1, :cond_16

    if-eqz v13, :cond_16

    iget-object v1, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    if-eqz v1, :cond_16

    .line 331
    iget-object v1, v13, Lkawa/lang/Translator;->patternScope:Lkawa/lang/PatternScope;

    iget-object v1, v1, Lkawa/lang/PatternScope;->pattern_names:Ljava/util/Vector;

    invoke-static {v1, v14}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_16

    .line 334
    iget-object v1, v9, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    const/16 v17, 0x2

    :goto_6
    shr-int/lit8 v1, v1, 0x1

    move/from16 v2, p4

    if-le v1, v2, :cond_14

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inconsistent ... nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    :cond_14
    mul-int/lit8 v3, v7, 0x8

    add-int v3, v17, v3

    int-to-char v3, v3

    .line 342
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v1, v2, :cond_15

    goto :goto_7

    :cond_15
    const/4 v7, -0x1

    :goto_7
    return v7

    .line 347
    :cond_16
    :goto_8
    invoke-static {v5, v14}, Lkawa/lang/SyntaxTemplate;->indexOf(Ljava/util/Vector;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_17

    .line 350
    invoke-virtual/range {p5 .. p5}, Ljava/util/Vector;->size()I

    move-result v1

    .line 351
    invoke-virtual {v5, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 353
    :cond_17
    instance-of v2, v14, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_18

    .line 354
    invoke-virtual/range {p8 .. p8}, Lkawa/lang/Translator;->currentScope()Lgnu/expr/ScopeExp;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lkawa/lang/Translator;->noteAccess(Ljava/lang/Object;Lgnu/expr/ScopeExp;)V

    .line 355
    :cond_18
    instance-of v2, v14, Lkawa/lang/SyntaxForm;

    if-nez v2, :cond_19

    move-object/from16 v2, v22

    if-eq v14, v2, :cond_1a

    const/16 v3, 0x18

    .line 356
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_19
    move-object/from16 v2, v22

    :cond_1a
    :goto_9
    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    .line 357
    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ne v14, v2, :cond_1b

    const/16 v16, -0x1

    :cond_1b
    return v16
.end method

.method execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 15

    move-object v7, p0

    .line 500
    iget-object v0, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    and-int/lit8 v2, v0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0xd

    .line 509
    iget-object v2, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    const/4 v8, 0x1

    if-ne v0, v3, :cond_1

    add-int/2addr v1, v8

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 512
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    .line 515
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0

    :cond_2
    const/16 v3, 0x18

    if-ne v0, v3, :cond_4

    add-int/2addr v1, v8

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 518
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 519
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object/from16 v9, p6

    invoke-static {v0, v9}, Lkawa/lang/SyntaxForms;->makeForm(Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    move-object/from16 v9, p6

    const/4 v10, 0x3

    if-ne v2, v8, :cond_9

    const/4 v2, 0x0

    move v11, v0

    move-object v12, v2

    move-object v13, v12

    :cond_5
    add-int/lit8 v14, v1, 0x1

    move-object v0, p0

    move v1, v14

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 528
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    if-nez v12, :cond_6

    move-object v13, v0

    goto :goto_2

    .line 533
    :cond_6
    invoke-virtual {v12, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 534
    :goto_2
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_7

    .line 536
    move-object v12, v0

    check-cast v12, Lgnu/lists/Pair;

    .line 537
    invoke-virtual {v12}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    shr-int/lit8 v0, v11, 0x3

    add-int v1, v14, v0

    .line 540
    iget-object v0, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v0, v11, 0x7

    if-eq v0, v8, :cond_5

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 544
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    if-nez v12, :cond_8

    move-object v13, v0

    goto :goto_3

    .line 548
    :cond_8
    invoke-virtual {v12, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    :goto_3
    return-object v13

    :cond_9
    const/16 v3, 0x28

    if-ne v0, v3, :cond_a

    add-int/2addr v1, v8

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 553
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    new-instance v1, Lgnu/lists/FVector;

    check-cast v0, Lgnu/lists/LList;

    invoke-direct {v1, v0}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    return-object v1

    :cond_a
    const/4 v3, 0x4

    if-ne v2, v3, :cond_b

    shr-int/2addr v0, v10

    .line 563
    iget-object v1, v7, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_b
    and-int/lit8 v3, v0, 0x6

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    shr-int/2addr v0, v10

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    .line 567
    invoke-virtual {p0, v0, v1, v3}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v10, :cond_c

    .line 569
    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    :cond_c
    return-object v0

    .line 573
    :cond_d
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown template code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8

    .line 408
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    invoke-static {}, Lgnu/expr/Compilation;->getCurrent()Lgnu/expr/Compilation;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkawa/lang/Translator;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute([Ljava/lang/Object;Lkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;
    .locals 8

    .line 431
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    new-array v5, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 453
    iget-object v0, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v2, v1

    :goto_0
    and-int/lit8 v3, v0, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, -0x7

    shl-int/lit8 v0, v0, 0xd

    .line 455
    iget-object v3, v7, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    shr-int/2addr v0, v4

    .line 458
    invoke-virtual {v7, v0, v8, v10}, Lkawa/lang/SyntaxTemplate;->get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/Pair;

    .line 459
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v5, 0x5

    if-ne v3, v5, :cond_5

    shr-int/2addr v0, v4

    .line 464
    aget-object v0, v8, v0

    .line 465
    invoke-direct {v7, v0, v9, v10}, Lkawa/lang/SyntaxTemplate;->get_count(Ljava/lang/Object;I[I)I

    move-result v11

    .line 466
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/4 v1, 0x0

    add-int/lit8 v12, v2, 0x1

    const/4 v2, 0x0

    move-object v13, v0

    move-object v14, v1

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v11, :cond_4

    .line 471
    aput v15, v10, v9

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 472
    invoke-virtual/range {v0 .. v6}, Lkawa/lang/SyntaxTemplate;->executeToList(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Lgnu/lists/LList;

    move-result-object v0

    if-nez v14, :cond_2

    move-object v13, v0

    goto :goto_2

    .line 477
    :cond_2
    invoke-virtual {v14, v0}, Lgnu/lists/Pair;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 480
    :goto_2
    instance-of v1, v0, Lgnu/lists/Pair;

    if-eqz v1, :cond_3

    .line 482
    move-object v14, v0

    check-cast v14, Lgnu/lists/Pair;

    .line 483
    invoke-virtual {v14}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    return-object v13

    .line 488
    :cond_5
    invoke-virtual/range {p0 .. p6}, Lkawa/lang/SyntaxTemplate;->execute(I[Ljava/lang/Object;I[ILkawa/lang/Translator;Lkawa/lang/TemplateScope;)Ljava/lang/Object;

    move-result-object v0

    .line 489
    new-instance v1, Lgnu/lists/Pair;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v1, v0, v2}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method get_var(I[Ljava/lang/Object;[I)Ljava/lang/Object;
    .locals 2

    .line 436
    aget-object p2, p2, p1

    .line 437
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shr-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 441
    check-cast p2, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    aget v1, p3, v0

    aget-object p2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 590
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    .line 591
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    .line 592
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    .line 593
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    iput p1, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->patternNesting:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->template_program:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lkawa/lang/SyntaxTemplate;->literal_values:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 584
    iget v0, p0, Lkawa/lang/SyntaxTemplate;->max_nesting:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method
