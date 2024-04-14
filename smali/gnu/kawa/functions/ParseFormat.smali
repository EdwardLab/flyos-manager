.class public Lgnu/kawa/functions/ParseFormat;
.super Lgnu/mapping/Procedure1;
.source "ParseFormat.java"


# static fields
.field public static final PARAM_FROM_LIST:I = -0x60000000

.field public static final PARAM_UNSPECIFIED:I = -0x40000000

.field public static final SEEN_HASH:I = 0x10

.field public static final SEEN_MINUS:I = 0x1

.field public static final SEEN_PLUS:I = 0x2

.field public static final SEEN_SPACE:I = 0x4

.field public static final SEEN_ZERO:I = 0x8

.field public static final parseFormat:Lgnu/kawa/functions/ParseFormat;


# instance fields
.field emacsStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lgnu/kawa/functions/ParseFormat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgnu/kawa/functions/ParseFormat;-><init>(Z)V

    sput-object v0, Lgnu/kawa/functions/ParseFormat;->parseFormat:Lgnu/kawa/functions/ParseFormat;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 18
    iput-boolean p1, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    return-void
.end method

.method public static asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;
    .locals 3

    const-string v0, ")"

    .line 234
    :try_start_0
    instance-of v1, p0, Lgnu/text/ReportFormat;

    if-eqz v1, :cond_0

    .line 235
    check-cast p0, Lgnu/text/ReportFormat;

    return-object p0

    :cond_0
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    .line 237
    new-instance p1, Lgnu/kawa/functions/LispFormat;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lgnu/kawa/functions/LispFormat;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 241
    :cond_1
    instance-of v1, p0, Lgnu/lists/FString;

    if-eqz v1, :cond_2

    .line 243
    check-cast p0, Lgnu/lists/FString;

    .line 244
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    iget-object v2, p0, Lgnu/lists/FString;->data:[C

    iget p0, p0, Lgnu/lists/FString;->size:I

    invoke-direct {v1, v2, p0}, Lgnu/mapping/CharArrayInPort;-><init>([CI)V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v1, Lgnu/mapping/CharArrayInPort;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    :try_start_1
    invoke-static {v1, p1}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lgnu/mapping/InPort;->close()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "End while parsing format"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 264
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p0

    .line 260
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing format ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p1

    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 38
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 42
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    if-ltz v4, :cond_1

    if-eq v4, v0, :cond_0

    int-to-char v4, v4

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    if-ne v4, v0, :cond_1

    int-to-char v4, v4

    .line 54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x0

    if-lez v5, :cond_2

    .line 61
    new-array v7, v5, [C

    .line 62
    invoke-virtual {v1, v6, v5, v7, v6}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 63
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    new-instance v5, Lgnu/text/LiteralFormat;

    invoke-direct {v5, v7}, Lgnu/text/LiteralFormat;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    const/4 v5, 0x1

    if-gez v4, :cond_4

    .line 213
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 216
    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 217
    instance-of v2, v1, Lgnu/text/ReportFormat;

    if-eqz v2, :cond_3

    .line 218
    check-cast v1, Lgnu/text/ReportFormat;

    return-object v1

    .line 220
    :cond_3
    new-array v0, v0, [Ljava/text/Format;

    .line 221
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 222
    new-instance v1, Lgnu/text/CompoundFormat;

    invoke-direct {v1, v0}, Lgnu/text/CompoundFormat;-><init>([Ljava/text/Format;)V

    return-object v1

    :cond_4
    const/16 v7, 0x24

    const/4 v8, -0x1

    const/16 v9, 0xa

    if-ne v4, v7, :cond_7

    .line 71
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    int-to-char v4, v4

    .line 72
    invoke-static {v4, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_6

    .line 78
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    int-to-char v7, v4

    .line 79
    invoke-static {v7, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-gez v7, :cond_5

    goto :goto_1

    .line 74
    :cond_6
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "missing number (position) after \'%$\'"

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    :goto_1
    const/4 v7, 0x0

    :goto_2
    int-to-char v10, v4

    const/16 v11, 0x20

    if-eq v10, v11, :cond_23

    const/16 v12, 0x23

    if-eq v10, v12, :cond_22

    const/16 v12, 0x2b

    if-eq v10, v12, :cond_21

    const/16 v12, 0x2d

    if-eq v10, v12, :cond_20

    const/16 v12, 0x30

    if-eq v10, v12, :cond_1f

    .line 102
    invoke-static {v10, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    const/high16 v13, -0x60000000

    const/16 v14, 0x2a

    const/high16 v15, -0x40000000    # -2.0f

    if-ltz v10, :cond_9

    .line 108
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    int-to-char v5, v4

    .line 109
    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_8

    goto :goto_4

    :cond_8
    mul-int/lit8 v10, v10, 0xa

    add-int/2addr v10, v5

    const/4 v5, 0x1

    goto :goto_3

    :cond_9
    if-ne v4, v14, :cond_a

    const/high16 v10, -0x60000000

    goto :goto_4

    :cond_a
    const/high16 v10, -0x40000000    # -2.0f

    :goto_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_d

    if-ne v4, v14, :cond_b

    goto :goto_6

    :cond_b
    const/4 v13, 0x0

    .line 128
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    int-to-char v5, v4

    .line 129
    invoke-static {v5, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_c

    goto :goto_6

    :cond_c
    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v5

    goto :goto_5

    :cond_d
    const/high16 v13, -0x40000000    # -2.0f

    :goto_6
    const/16 v5, 0x53

    if-eq v4, v5, :cond_19

    const/16 v14, 0x6f

    const/16 v9, 0x69

    const/16 v11, 0x58

    if-eq v4, v11, :cond_e

    if-eq v4, v9, :cond_e

    if-eq v4, v14, :cond_e

    const/16 v12, 0x73

    if-eq v4, v12, :cond_19

    const/16 v5, 0x78

    if-eq v4, v5, :cond_e

    packed-switch v4, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown format character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 188
    :pswitch_0
    new-instance v4, Lgnu/kawa/functions/ObjectFormat;

    invoke-direct {v4, v6}, Lgnu/kawa/functions/ObjectFormat;-><init>(Z)V

    goto/16 :goto_c

    :cond_e
    :pswitch_1
    const/16 v5, 0x10

    const/16 v12, 0x8

    if-eq v4, v2, :cond_12

    if-ne v4, v9, :cond_f

    goto :goto_8

    :cond_f
    if-ne v4, v14, :cond_10

    const/4 v4, 0x0

    const/16 v16, 0x8

    goto :goto_9

    :cond_10
    if-ne v4, v11, :cond_11

    const/16 v4, 0x20

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    const/16 v16, 0x10

    goto :goto_9

    :cond_12
    :goto_8
    const/4 v4, 0x0

    const/16 v16, 0xa

    :goto_9
    and-int/lit8 v5, v7, 0x9

    if-ne v5, v12, :cond_13

    const/16 v18, 0x30

    goto :goto_a

    :cond_13
    const/16 v18, 0x20

    :goto_a
    and-int/lit8 v5, v7, 0x10

    if-eqz v5, :cond_14

    or-int/lit8 v4, v4, 0x8

    :cond_14
    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_15

    or-int/lit8 v4, v4, 0x2

    :cond_15
    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_16

    or-int/lit8 v4, v4, 0x10

    :cond_16
    and-int/lit8 v5, v7, 0x4

    if-eqz v5, :cond_17

    or-int/lit8 v4, v4, 0x4

    :cond_17
    move/from16 v21, v4

    if-eq v13, v15, :cond_18

    and-int/lit8 v7, v7, -0x9

    or-int/lit8 v21, v21, 0x40

    const/16 v18, 0x30

    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, -0x40000000    # -2.0f

    move/from16 v17, v13

    .line 176
    invoke-static/range {v16 .. v21}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    goto :goto_c

    :cond_18
    const/high16 v19, -0x40000000    # -2.0f

    const/high16 v20, -0x40000000    # -2.0f

    move/from16 v17, v10

    .line 181
    invoke-static/range {v16 .. v21}, Lgnu/kawa/functions/IntegerFormat;->getInstance(IIIIII)Ljava/text/Format;

    move-result-object v4

    goto :goto_c

    .line 141
    :cond_19
    new-instance v9, Lgnu/kawa/functions/ObjectFormat;

    if-ne v4, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_b

    :cond_1a
    const/4 v5, 0x0

    :goto_b
    invoke-direct {v9, v5, v13}, Lgnu/kawa/functions/ObjectFormat;-><init>(ZI)V

    move-object v4, v9

    :goto_c
    if-lez v10, :cond_1e

    and-int/lit8 v5, v7, 0x8

    if-eqz v5, :cond_1b

    const/16 v11, 0x30

    goto :goto_d

    :cond_1b
    const/16 v11, 0x20

    :goto_d
    and-int/lit8 v5, v7, 0x1

    if-eqz v5, :cond_1c

    const/16 v6, 0x64

    goto :goto_e

    :cond_1c
    const/16 v5, 0x30

    if-ne v11, v5, :cond_1d

    const/4 v6, -0x1

    .line 203
    :cond_1d
    :goto_e
    new-instance v5, Lgnu/text/PadFormat;

    invoke-direct {v5, v4, v10, v11, v6}, Lgnu/text/PadFormat;-><init>(Ljava/text/Format;ICI)V

    move-object v4, v5

    .line 209
    :cond_1e
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1f
    or-int/lit8 v4, v7, 0x8

    goto :goto_f

    :cond_20
    or-int/lit8 v4, v7, 0x1

    goto :goto_f

    :cond_21
    or-int/lit8 v4, v7, 0x2

    goto :goto_f

    :cond_22
    or-int/lit8 v4, v7, 0x10

    goto :goto_f

    :cond_23
    or-int/lit8 v4, v7, 0x4

    :goto_f
    move v7, v4

    .line 88
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v4

    const/4 v5, 0x1

    const/16 v9, 0xa

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 227
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->asFormat(Ljava/lang/Object;C)Lgnu/text/ReportFormat;

    move-result-object p1

    return-object p1
.end method

.method public parseFormat(Lgnu/text/LineBufferedReader;)Lgnu/text/ReportFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lgnu/kawa/functions/ParseFormat;->emacsStyle:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x7e

    :goto_0
    invoke-static {p1, v0}, Lgnu/kawa/functions/ParseFormat;->parseFormat(Lgnu/text/LineBufferedReader;C)Lgnu/text/ReportFormat;

    move-result-object p1

    return-object p1
.end method
