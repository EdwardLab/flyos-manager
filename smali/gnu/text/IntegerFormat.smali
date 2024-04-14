.class public Lgnu/text/IntegerFormat;
.super Lgnu/text/ReportFormat;
.source "IntegerFormat.java"


# static fields
.field public static final MIN_DIGITS:I = 0x40

.field public static final PAD_RIGHT:I = 0x10

.field public static final SHOW_BASE:I = 0x8

.field public static final SHOW_GROUPS:I = 0x1

.field public static final SHOW_PLUS:I = 0x2

.field public static final SHOW_SPACE:I = 0x4

.field public static final UPPERCASE:I = 0x20


# instance fields
.field public base:I

.field public commaChar:I

.field public commaInterval:I

.field public flags:I

.field public minWidth:I

.field public padChar:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    const/16 v0, 0xa

    .line 49
    iput v0, p0, Lgnu/text/IntegerFormat;->base:I

    const/4 v0, 0x1

    .line 50
    iput v0, p0, Lgnu/text/IntegerFormat;->minWidth:I

    const/16 v0, 0x20

    .line 51
    iput v0, p0, Lgnu/text/IntegerFormat;->padChar:I

    const/16 v0, 0x2c

    .line 52
    iput v0, p0, Lgnu/text/IntegerFormat;->commaChar:I

    const/4 v0, 0x3

    .line 53
    iput v0, p0, Lgnu/text/IntegerFormat;->commaInterval:I

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lgnu/text/IntegerFormat;->flags:I

    return-void
.end method


# virtual methods
.method public convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 2

    .line 165
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 167
    :cond_0
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 168
    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 68
    instance-of v4, v1, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 69
    :goto_0
    iget v5, v0, Lgnu/text/IntegerFormat;->minWidth:I

    const/4 v6, 0x1

    invoke-static {v5, v6, v4, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v5

    .line 70
    iget v7, v0, Lgnu/text/IntegerFormat;->minWidth:I

    const/high16 v8, -0x60000000

    if-ne v7, v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_1
    iget v7, v0, Lgnu/text/IntegerFormat;->padChar:I

    const/16 v9, 0x20

    invoke-static {v7, v9, v4, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v7

    .line 72
    iget v10, v0, Lgnu/text/IntegerFormat;->padChar:I

    if-ne v10, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 73
    :cond_2
    iget v10, v0, Lgnu/text/IntegerFormat;->commaChar:I

    const/16 v11, 0x2c

    invoke-static {v10, v11, v4, v2}, Lgnu/text/IntegerFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v10

    .line 74
    iget v11, v0, Lgnu/text/IntegerFormat;->commaChar:I

    if-ne v11, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 75
    :cond_3
    iget v11, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    const/4 v12, 0x3

    invoke-static {v11, v12, v4, v2}, Lgnu/text/IntegerFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v11

    .line 76
    iget v12, v0, Lgnu/text/IntegerFormat;->commaInterval:I

    if-ne v12, v8, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 77
    :cond_4
    iget v8, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v12, v8, 0x1

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    const/16 v14, 0x10

    and-int/2addr v8, v14

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    const/16 v15, 0x30

    if-ne v7, v15, :cond_7

    const/16 v16, 0x1

    goto :goto_3

    :cond_7
    const/16 v16, 0x0

    :goto_3
    if-eqz v4, :cond_9

    .line 82
    array-length v1, v4

    if-lt v2, v1, :cond_8

    const-string v1, "#<missing format argument>"

    .line 84
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return v2

    .line 87
    :cond_8
    aget-object v1, v4, v2

    .line 89
    :cond_9
    iget v4, v0, Lgnu/text/IntegerFormat;->base:I

    invoke-virtual {v0, v1, v4}, Lgnu/text/IntegerFormat;->convertToIntegerString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 92
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v13, 0x2d

    if-ne v1, v13, :cond_a

    const/16 v17, 0x1

    goto :goto_4

    :cond_a
    const/16 v17, 0x0

    .line 94
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v17, :cond_b

    add-int/lit8 v18, v9, -0x1

    goto :goto_5

    :cond_b
    move/from16 v18, v9

    :goto_5
    if-eqz v12, :cond_c

    add-int/lit8 v19, v18, -0x1

    .line 96
    div-int v19, v19, v11

    goto :goto_6

    :cond_c
    const/16 v19, 0x0

    :goto_6
    add-int v19, v18, v19

    if-nez v17, :cond_d

    .line 98
    iget v13, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v13, v13, 0x6

    if-eqz v13, :cond_e

    :cond_d
    add-int/lit8 v19, v19, 0x1

    .line 101
    :cond_e
    iget v13, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v20, v13, 0x8

    const/16 v6, 0x8

    if-eqz v20, :cond_10

    .line 103
    iget v15, v0, Lgnu/text/IntegerFormat;->base:I

    if-ne v15, v14, :cond_f

    add-int/lit8 v19, v19, 0x2

    goto :goto_7

    :cond_f
    if-ne v15, v6, :cond_10

    const/16 v15, 0x30

    if-eq v1, v15, :cond_10

    add-int/lit8 v19, v19, 0x1

    :cond_10
    :goto_7
    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_12

    const/4 v13, 0x1

    if-ne v9, v13, :cond_11

    const/16 v13, 0x30

    if-ne v1, v13, :cond_11

    if-nez v5, :cond_11

    move/from16 v13, v18

    const/4 v9, 0x0

    goto :goto_8

    :cond_11
    move/from16 v13, v18

    goto :goto_8

    :cond_12
    move/from16 v13, v19

    :goto_8
    if-nez v8, :cond_13

    if-nez v16, :cond_13

    :goto_9
    if-le v5, v13, :cond_13

    .line 116
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    :cond_13
    if-eqz v17, :cond_14

    const/16 v15, 0x2d

    .line 120
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v9, v9, -0x1

    const/16 v15, 0x20

    const/16 v17, 0x1

    goto :goto_c

    .line 124
    :cond_14
    iget v15, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/lit8 v17, v15, 0x2

    if-eqz v17, :cond_15

    const/16 v15, 0x2b

    .line 125
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    goto :goto_a

    :cond_15
    and-int/lit8 v15, v15, 0x4

    if-eqz v15, :cond_16

    const/16 v15, 0x20

    .line 127
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    goto :goto_b

    :cond_16
    :goto_a
    const/16 v15, 0x20

    :goto_b
    const/16 v17, 0x0

    .line 128
    :goto_c
    iget v14, v0, Lgnu/text/IntegerFormat;->base:I

    const/16 v6, 0xa

    if-le v14, v6, :cond_17

    iget v6, v0, Lgnu/text/IntegerFormat;->flags:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    goto :goto_d

    :cond_17
    const/4 v6, 0x0

    .line 129
    :goto_d
    iget v15, v0, Lgnu/text/IntegerFormat;->flags:I

    const/16 v0, 0x8

    and-int/2addr v15, v0

    if-eqz v15, :cond_1a

    const/16 v15, 0x10

    if-ne v14, v15, :cond_19

    const/16 v15, 0x30

    .line 133
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    if-eqz v6, :cond_18

    const/16 v0, 0x58

    goto :goto_e

    :cond_18
    const/16 v0, 0x78

    .line 134
    :goto_e
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_f

    :cond_19
    const/16 v15, 0x30

    if-ne v14, v0, :cond_1a

    if-eq v1, v15, :cond_1a

    .line 137
    invoke-virtual {v3, v15}, Ljava/io/Writer;->write(I)V

    :cond_1a
    :goto_f
    if-eqz v16, :cond_1b

    :goto_10
    if-le v5, v13, :cond_1b

    .line 141
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_10

    :cond_1b
    :goto_11
    move/from16 v0, v17

    if-nez v9, :cond_1c

    if-eqz v8, :cond_1f

    :goto_12
    if-le v5, v13, :cond_1f

    .line 156
    invoke-virtual {v3, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    :cond_1c
    add-int/lit8 v17, v0, 0x1

    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v6, :cond_1d

    .line 148
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 149
    :cond_1d
    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v9, v9, -0x1

    if-eqz v12, :cond_1b

    if-lez v9, :cond_1b

    .line 151
    rem-int v0, v9, v11

    if-nez v0, :cond_1b

    .line 152
    invoke-virtual {v3, v10}, Ljava/io/Writer;->write(I)V

    goto :goto_11

    .line 159
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lgnu/text/IntegerFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_1f
    const/4 v0, 0x1

    add-int/2addr v2, v0

    return v2
.end method

.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/text/IntegerFormat;->format(Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I

    move-result p1

    return p1
.end method
