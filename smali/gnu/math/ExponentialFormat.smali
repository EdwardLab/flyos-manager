.class public Lgnu/math/ExponentialFormat;
.super Ljava/text/Format;
.source "ExponentialFormat.java"


# static fields
.field static final LOG10:D


# instance fields
.field public expDigits:I

.field public exponentChar:C

.field public exponentShowSign:Z

.field public fracDigits:I

.field public general:Z

.field public intDigits:I

.field public overflowChar:C

.field public padChar:C

.field public showPlus:Z

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lgnu/math/ExponentialFormat;->LOG10:D

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    const/16 v0, 0x45

    .line 31
    iput-char v0, p0, Lgnu/math/ExponentialFormat;->exponentChar:C

    return-void
.end method

.method static addOne(Ljava/lang/StringBuffer;II)Z
    .locals 3

    :goto_0
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    const/16 p1, 0x31

    .line 51
    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    return v0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 54
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-eq v1, v2, :cond_1

    add-int/2addr v1, v0

    int-to-char p1, v1

    .line 57
    invoke-virtual {p0, p2, p1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 v0, 0x30

    .line 60
    invoke-virtual {p0, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_0
.end method


# virtual methods
.method format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 21

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    .line 81
    iget v4, v0, Lgnu/math/ExponentialFormat;->intDigits:I

    .line 82
    iget v5, v0, Lgnu/math/ExponentialFormat;->fracDigits:I

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    cmpg-double v10, v1, v8

    if-gez v10, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    neg-double v1, v1

    .line 86
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    const/16 v10, 0x2b

    const/16 v11, 0x2d

    if-eqz v8, :cond_2

    if-ltz v5, :cond_3

    .line 91
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :cond_2
    iget-boolean v12, v0, Lgnu/math/ExponentialFormat;->showPlus:Z

    if-eqz v12, :cond_4

    .line 95
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 100
    :goto_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v14, 0x1

    :goto_4
    const/16 v15, 0x3e8

    const/16 v6, 0xa

    const/16 v16, 0x2

    if-ltz v5, :cond_a

    if-eqz v14, :cond_7

    goto :goto_7

    :cond_7
    if-lez v4, :cond_8

    const/4 v8, 0x1

    goto :goto_5

    :cond_8
    move v8, v4

    :goto_5
    add-int/2addr v8, v5

    .line 141
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v17

    sget-wide v19, Lgnu/math/ExponentialFormat;->LOG10:D

    div-double v17, v17, v19

    const-wide v19, 0x408f400000000000L    # 1000.0

    add-double v10, v17, v19

    double-to-int v10, v10

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_9

    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    sub-int/2addr v10, v15

    :goto_6
    sub-int v10, v8, v10

    sub-int/2addr v10, v7

    .line 147
    invoke-static {v1, v2, v10}, Lgnu/math/RealNum;->toScaledInt(DI)Lgnu/math/IntNum;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Lgnu/math/IntNum;->format(ILjava/lang/StringBuffer;)V

    add-int/lit8 v1, v8, -0x1

    sub-int/2addr v1, v10

    goto/16 :goto_d

    :cond_a
    :goto_7
    if-nez p3, :cond_b

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    move-object/from16 v1, p3

    :goto_8
    const/16 v2, 0x45

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_10

    .line 110
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/2addr v2, v13

    add-int/lit8 v10, v2, 0x1

    .line 112
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0x2d

    if-ne v1, v10, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_d

    const/4 v11, 0x2

    goto :goto_a

    :cond_d
    const/4 v11, 0x1

    :goto_a
    add-int/2addr v11, v2

    const/4 v10, 0x0

    .line 114
    :goto_b
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v11, v6, :cond_e

    mul-int/lit8 v10, v10, 0xa

    .line 115
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v18, 0x30

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v10, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_e
    if-eqz v1, :cond_f

    neg-int v10, v10

    .line 118
    :cond_f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v1, v10

    goto :goto_c

    .line 121
    :cond_10
    invoke-static {v1, v3}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v1

    :goto_c
    if-eqz v8, :cond_11

    add-int/lit8 v13, v13, 0x1

    :cond_11
    add-int/lit8 v2, v13, 0x1

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sub-int/2addr v2, v13

    if-le v2, v7, :cond_12

    add-int v6, v13, v2

    sub-int/2addr v6, v7

    .line 134
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-ne v6, v8, :cond_12

    add-int/lit8 v2, v2, -0x1

    add-int v6, v13, v2

    .line 135
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_12
    move v8, v2

    sub-int v2, v8, v1

    add-int/lit8 v10, v2, -0x1

    :goto_d
    add-int/lit8 v2, v4, -0x1

    sub-int/2addr v1, v2

    if-gez v1, :cond_13

    neg-int v2, v1

    goto :goto_e

    :cond_13
    move v2, v1

    :goto_e
    const/4 v6, 0x3

    if-lt v2, v15, :cond_14

    const/4 v15, 0x4

    goto :goto_f

    :cond_14
    const/16 v15, 0x64

    if-lt v2, v15, :cond_15

    const/4 v15, 0x3

    goto :goto_f

    :cond_15
    const/16 v15, 0xa

    if-lt v2, v15, :cond_16

    const/4 v15, 0x2

    goto :goto_f

    :cond_16
    const/4 v15, 0x1

    .line 155
    :goto_f
    iget v11, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v11, v15, :cond_17

    move v15, v11

    .line 158
    :cond_17
    iget-boolean v7, v0, Lgnu/math/ExponentialFormat;->general:Z

    if-nez v7, :cond_18

    const/4 v11, 0x0

    goto :goto_10

    :cond_18
    if-lez v11, :cond_19

    add-int/lit8 v11, v11, 0x2

    goto :goto_10

    :cond_19
    const/4 v11, 0x4

    :goto_10
    if-gez v5, :cond_1a

    const/16 v16, 0x1

    goto :goto_11

    :cond_1a
    const/16 v16, 0x0

    :goto_11
    if-nez v7, :cond_1b

    if-eqz v16, :cond_22

    :cond_1b
    sub-int v10, v8, v10

    if-eqz v16, :cond_1d

    const/4 v5, 0x7

    if-ge v10, v5, :cond_1c

    move v5, v10

    :cond_1c
    if-le v8, v5, :cond_1d

    move v5, v8

    :cond_1d
    sub-int v18, v5, v10

    if-eqz v7, :cond_1e

    if-ltz v10, :cond_1e

    if-ltz v18, :cond_1e

    move v8, v5

    move v4, v10

    const/4 v5, 0x0

    goto :goto_14

    :cond_1e
    if-eqz v16, :cond_22

    .line 180
    iget v7, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v7, :cond_1f

    goto :goto_12

    :cond_1f
    sub-int/2addr v7, v12

    sub-int/2addr v7, v15

    sub-int/2addr v7, v6

    if-gez v4, :cond_20

    sub-int/2addr v7, v4

    :cond_20
    if-le v7, v5, :cond_21

    :goto_12
    move v8, v5

    goto :goto_13

    :cond_21
    move v8, v7

    :goto_13
    if-gtz v8, :cond_22

    const/4 v5, 0x1

    const/4 v8, 0x1

    goto :goto_14

    :cond_22
    const/4 v5, 0x1

    :goto_14
    add-int/2addr v8, v13

    .line 197
    :goto_15
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ge v6, v8, :cond_23

    const/16 v6, 0x30

    .line 198
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 201
    :cond_23
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-ne v8, v6, :cond_24

    const/16 v6, 0x30

    goto :goto_16

    :cond_24
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    :goto_16
    const/16 v7, 0x35

    if-lt v6, v7, :cond_25

    const/4 v6, 0x1

    goto :goto_17

    :cond_25
    const/4 v6, 0x0

    :goto_17
    if-eqz v6, :cond_26

    .line 205
    invoke-static {v3, v13, v8}, Lgnu/math/ExponentialFormat;->addOne(Ljava/lang/StringBuffer;II)Z

    move-result v6

    .line 208
    :cond_26
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    .line 209
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    if-gez v4, :cond_28

    move v6, v4

    :goto_18
    const/4 v7, 0x1

    add-int/2addr v6, v7

    if-gtz v6, :cond_27

    const/16 v7, 0x30

    .line 216
    invoke-virtual {v3, v13, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_18

    :cond_27
    move v6, v13

    goto :goto_1a

    :cond_28
    :goto_19
    const/16 v7, 0x30

    add-int v6, v13, v4

    if-le v6, v8, :cond_29

    .line 222
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_29
    :goto_1a
    if-eqz v14, :cond_2a

    const/4 v5, 0x0

    goto :goto_1b

    :cond_2a
    const/16 v7, 0x2e

    .line 228
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :goto_1b
    if-eqz v5, :cond_2e

    .line 234
    iget-char v7, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    iget-boolean v7, v0, Lgnu/math/ExponentialFormat;->exponentShowSign:Z

    if-nez v7, :cond_2b

    if-gez v1, :cond_2d

    :cond_2b
    if-ltz v1, :cond_2c

    const/16 v10, 0x2b

    goto :goto_1c

    :cond_2c
    const/16 v10, 0x2d

    .line 236
    :goto_1c
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :cond_2d
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 240
    iget v7, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    sub-int/2addr v2, v1

    sub-int/2addr v7, v2

    if-lez v7, :cond_2f

    :goto_1d
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_2f

    const/16 v2, 0x30

    .line 245
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_1d

    :cond_2e
    const/4 v15, 0x0

    .line 252
    :cond_2f
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v9

    .line 254
    iget v2, v0, Lgnu/math/ExponentialFormat;->width:I

    sub-int/2addr v2, v1

    if-eqz v16, :cond_32

    const/4 v1, 0x1

    add-int/2addr v6, v1

    .line 257
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq v6, v1, :cond_30

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    iget-char v7, v0, Lgnu/math/ExponentialFormat;->exponentChar:C

    if-ne v1, v7, :cond_32

    :cond_30
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v1, :cond_31

    if-lez v2, :cond_32

    :cond_31
    add-int/lit8 v2, v2, -0x1

    const/16 v1, 0x30

    .line 262
    invoke-virtual {v3, v6, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    :cond_32
    if-gez v2, :cond_33

    .line 265
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v1, :cond_34

    :cond_33
    if-eqz v5, :cond_35

    iget v1, v0, Lgnu/math/ExponentialFormat;->expDigits:I

    if-le v15, v1, :cond_35

    if-lez v1, :cond_35

    iget-char v1, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-nez v1, :cond_34

    goto :goto_1f

    .line 289
    :cond_34
    iget-char v1, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    if-eqz v1, :cond_39

    .line 291
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    :goto_1e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_39

    .line 293
    iget-char v2, v0, Lgnu/math/ExponentialFormat;->overflowChar:C

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    :cond_35
    :goto_1f
    if-gtz v4, :cond_37

    if-gtz v2, :cond_36

    .line 270
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    if-gtz v1, :cond_37

    :cond_36
    const/16 v1, 0x30

    .line 272
    invoke-virtual {v3, v13, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    :cond_37
    if-nez v5, :cond_38

    .line 275
    iget v1, v0, Lgnu/math/ExponentialFormat;->width:I

    if-lez v1, :cond_38

    :goto_20
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_38

    const/16 v1, 0x20

    .line 283
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_20

    :cond_38
    :goto_21
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_39

    .line 287
    iget-char v1, v0, Lgnu/math/ExponentialFormat;->padChar:C

    invoke-virtual {v3, v9, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_21

    :cond_39
    return-object v3
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 7

    .line 74
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(FLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 6

    float-to-double v1, p1

    .line 67
    iget v0, p0, Lgnu/math/ExponentialFormat;->fracDigits:I

    if-gez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/String;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 0

    long-to-double p1, p1

    .line 300
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 306
    check-cast p1, Lgnu/math/RealNum;

    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lgnu/math/ExponentialFormat;->format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 311
    new-instance p1, Ljava/lang/Error;

    const-string p2, "ExponentialFormat.parse - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 315
    new-instance p1, Ljava/lang/Error;

    const-string p2, "ExponentialFormat.parseObject - not implemented"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method
