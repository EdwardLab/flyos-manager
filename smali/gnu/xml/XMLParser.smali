.class public Lgnu/xml/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field private static final ATTRIBUTE_SEEN_EQ_STATE:I = 0xb

.field private static final ATTRIBUTE_SEEN_NAME_STATE:I = 0x8

.field static final BAD_ENCODING_SYNTAX:Ljava/lang/String; = "bad \'encoding\' declaration"

.field static final BAD_STANDALONE_SYNTAX:Ljava/lang/String; = "bad \'standalone\' declaration"

.field private static final BEGIN_ELEMENT_STATE:I = 0x2

.field private static final DOCTYPE_NAME_SEEN_STATE:I = 0x10

.field private static final DOCTYPE_SEEN_STATE:I = 0xd

.field private static final END_ELEMENT_STATE:I = 0x4

.field private static final EXPECT_NAME_MODIFIER:I = 0x1

.field private static final EXPECT_RIGHT_STATE:I = 0x1b

.field private static final INIT_LEFT_QUEST_STATE:I = 0x1e

.field private static final INIT_LEFT_STATE:I = 0x22

.field private static final INIT_STATE:I = 0x0

.field private static final INIT_TEXT_STATE:I = 0x1f

.field private static final INVALID_VERSION_DECL:I = 0x23

.field private static final MAYBE_ATTRIBUTE_STATE:I = 0xa

.field private static final PREV_WAS_CR_STATE:I = 0x1c

.field private static final SAW_AMP_SHARP_STATE:I = 0x1a

.field private static final SAW_AMP_STATE:I = 0x19

.field private static final SAW_ENTITY_REF:I = 0x6

.field private static final SAW_EOF_ERROR:I = 0x25

.field private static final SAW_ERROR:I = 0x24

.field private static final SAW_LEFT_EXCL_MINUS_STATE:I = 0x16

.field private static final SAW_LEFT_EXCL_STATE:I = 0x14

.field private static final SAW_LEFT_QUEST_STATE:I = 0x15

.field private static final SAW_LEFT_SLASH_STATE:I = 0x13

.field private static final SAW_LEFT_STATE:I = 0xe

.field private static final SKIP_SPACES_MODIFIER:I = 0x2

.field private static final TEXT_STATE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Lgnu/text/LineInputStreamReader;

    invoke-direct {v0, p0}, Lgnu/text/LineInputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result p0

    const/4 v1, -0x1

    if-gez p0, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v2

    :goto_0
    if-gez v2, :cond_1

    const/4 v3, -0x1

    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    :goto_1
    const/16 v4, 0xef

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    if-ne p0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v2, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v3, v4, :cond_2

    const/4 p0, 0x3

    .line 73
    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    .line 74
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const/4 v4, 0x2

    const/16 v7, 0xfe

    const/16 v8, 0xff

    if-ne p0, v8, :cond_3

    if-ne v2, v7, :cond_3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v0, v4}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    const-string p0, "UTF-16LE"

    .line 79
    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    if-ne p0, v7, :cond_4

    if-ne v2, v8, :cond_4

    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v0, v4}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    const-string p0, "UTF-16BE"

    .line 84
    invoke-virtual {v0, p0}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    if-gez v3, :cond_5

    goto :goto_2

    .line 88
    :cond_5
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v1

    :goto_2
    const/16 v4, 0x4c

    if-ne p0, v4, :cond_7

    const/16 v4, 0x6f

    if-ne v2, v4, :cond_7

    const/16 v4, 0xa7

    if-ne v3, v4, :cond_7

    const/16 v4, 0x94

    if-eq v1, v4, :cond_6

    goto :goto_3

    .line 90
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "XMLParser: EBCDIC encodings not supported"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_7
    :goto_3
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->resetStart(I)V

    const/16 v4, 0x3c

    const/16 v7, 0x3f

    if-ne p0, v4, :cond_9

    if-ne v2, v7, :cond_8

    const/16 v8, 0x78

    if-ne v3, v8, :cond_8

    const/16 v8, 0x6d

    if-eq v1, v8, :cond_a

    :cond_8
    if-nez v2, :cond_9

    if-ne v3, v7, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    if-nez p0, :cond_12

    if-ne v2, v4, :cond_12

    if-nez v3, :cond_12

    if-ne v1, v7, :cond_12

    .line 96
    :cond_a
    iget-object p0, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    if-nez p0, :cond_b

    const/16 p0, 0x2000

    new-array p0, p0, [C

    .line 98
    iput-object p0, v0, Lgnu/text/LineInputStreamReader;->buffer:[C

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 103
    :goto_4
    invoke-virtual {v0}, Lgnu/text/LineInputStreamReader;->getByte()I

    move-result v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    if-gez v3, :cond_d

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v1, 0x1

    and-int/lit16 v5, v3, 0xff

    int-to-char v5, v5

    .line 108
    aput-char v5, p0, v1

    if-nez v2, :cond_10

    const/16 v1, 0x3e

    if-ne v3, v1, :cond_e

    move v1, v4

    .line 119
    :goto_5
    iput v6, v0, Lgnu/text/LineInputStreamReader;->pos:I

    .line 120
    iput v1, v0, Lgnu/text/LineInputStreamReader;->limit:I

    goto :goto_7

    :cond_e
    const/16 v1, 0x27

    if-eq v3, v1, :cond_f

    const/16 v1, 0x22

    if-ne v3, v1, :cond_11

    :cond_f
    move v2, v3

    goto :goto_6

    :cond_10
    if-ne v3, v2, :cond_11

    const/4 v2, 0x0

    :cond_11
    :goto_6
    move v1, v4

    goto :goto_4

    .line 123
    :cond_12
    invoke-virtual {v0, v5}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    .line 125
    :goto_7
    invoke-virtual {v0, v6}, Lgnu/text/LineInputStreamReader;->setKeepFullLines(Z)V

    return-object v0
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    new-instance v0, Lgnu/xml/XMLFilter;

    invoke-direct {v0, p2}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 144
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 145
    invoke-virtual {v0, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 146
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 147
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-static {p0, v0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 151
    invoke-virtual {v0}, Lgnu/xml/XMLFilter;->endDocument()V

    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->setMessages(Lgnu/text/SourceMessages;)V

    .line 158
    invoke-virtual {p2, p0}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 159
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->startDocument()V

    .line 160
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->getPath()Lgnu/text/Path;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p2, p1}, Lgnu/xml/XMLFilter;->writeDocumentUri(Ljava/lang/Object;)V

    .line 163
    :cond_0
    invoke-static {p0, p2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V

    .line 164
    invoke-virtual {p2}, Lgnu/xml/XMLFilter;->endDocument()V

    .line 165
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->close()V

    return-void
.end method

.method public static parse(Lgnu/text/LineBufferedReader;Lgnu/xml/XMLFilter;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 171
    iget-object v1, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 172
    iget v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 173
    iget v3, v0, Lgnu/text/LineBufferedReader;->limit:I

    const/16 v9, 0x3c

    const/16 v11, 0x23

    const/4 v6, 0x1

    const/16 v4, 0xe

    const/4 v5, 0x0

    move v4, v3

    move-object/from16 v17, v5

    const/4 v12, 0x0

    const/16 v15, 0x20

    const/16 v16, 0xe

    const/16 v18, -0x1

    const/16 v19, 0x3c

    move-object v5, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v8, 0x85

    const/16 v13, 0x65

    const/16 v10, 0x3e

    const/16 v14, 0xa

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    .line 253
    :pswitch_1
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v0, 0x66

    const-string v1, "unexpected end-of-file"

    .line 254
    invoke-virtual {v7, v0, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    return-void

    :pswitch_2
    move-object/from16 v1, v17

    goto :goto_1

    :pswitch_3
    const-string v17, "invalid xml version specifier"

    move-object/from16 v1, v17

    move/from16 v2, v18

    .line 238
    :goto_1
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 239
    invoke-virtual {v7, v13, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    :goto_2
    if-lt v2, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v8, v2, 0x1

    .line 244
    aget-char v15, v5, v2

    if-ne v15, v10, :cond_1

    move-object/from16 v17, v1

    move v9, v4

    move v2, v8

    goto :goto_9

    :cond_1
    move v2, v8

    goto :goto_2

    :pswitch_4
    const/16 v1, 0x3f

    if-ne v15, v1, :cond_3

    const/16 v1, 0x21

    move v3, v2

    :cond_2
    :goto_3
    move v9, v4

    goto :goto_a

    :cond_3
    const/16 v1, 0xe

    goto :goto_0

    :pswitch_5
    if-ne v15, v9, :cond_4

    move v9, v4

    const/16 v1, 0x22

    goto :goto_a

    :cond_4
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_6
    if-ne v15, v14, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-ne v15, v8, :cond_6

    const/4 v8, 0x1

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    :goto_6
    or-int/2addr v1, v8

    if-eqz v1, :cond_7

    .line 352
    invoke-virtual {v0, v6, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v2, -0x1

    .line 357
    invoke-virtual {v0, v6, v1}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_4

    :pswitch_7
    if-eq v15, v10, :cond_8

    const-string v17, "missing \'>\'"

    const/16 v1, 0x24

    goto :goto_0

    :goto_7
    :pswitch_8
    const/16 v8, 0x3b

    if-ne v15, v8, :cond_a

    .line 446
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v1, v2, -0x1

    sub-int/2addr v1, v3

    .line 447
    invoke-virtual {v7, v12, v5, v3, v1}, Lgnu/xml/XMLFilter;->emitCharacterReference(I[CII)V

    :cond_8
    :goto_8
    move v9, v4

    :goto_9
    const/4 v1, 0x1

    :cond_9
    :goto_a
    const/16 v13, 0x9

    goto/16 :goto_40

    :cond_a
    const/16 v8, 0x78

    if-ne v15, v8, :cond_b

    if-nez v18, :cond_b

    const/16 v8, 0x10

    const/16 v18, 0x10

    goto :goto_d

    :cond_b
    const/high16 v8, 0x8000000

    if-lt v12, v8, :cond_c

    goto :goto_c

    :cond_c
    if-nez v18, :cond_d

    const/16 v8, 0xa

    goto :goto_b

    :cond_d
    move/from16 v8, v18

    .line 459
    :goto_b
    invoke-static {v15, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v10

    if-gez v10, :cond_e

    .line 469
    :goto_c
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    const-string v1, "invalid character reference"

    .line 470
    invoke-virtual {v7, v13, v1}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    goto :goto_8

    :cond_e
    mul-int v12, v12, v8

    add-int/2addr v12, v10

    :goto_d
    if-ge v2, v4, :cond_2

    add-int/lit8 v8, v2, 0x1

    .line 465
    aget-char v15, v5, v2

    move v2, v8

    goto :goto_7

    :pswitch_9
    if-ne v15, v11, :cond_f

    const/16 v1, 0x1a

    move v3, v2

    move v9, v4

    const/4 v12, 0x0

    const/16 v13, 0x9

    const/16 v18, 0x0

    goto/16 :goto_40

    :cond_f
    add-int/lit8 v3, v2, -0x1

    const/4 v1, 0x7

    goto/16 :goto_0

    :pswitch_a
    if-gez v18, :cond_10

    add-int/lit8 v8, v2, -0x1

    move v14, v8

    move v8, v2

    goto :goto_e

    :cond_10
    move v8, v2

    move/from16 v14, v18

    :goto_e
    if-ne v15, v10, :cond_34

    add-int/lit8 v2, v8, -0x2

    .line 532
    aget-char v6, v5, v2

    const/16 v9, 0x3f

    if-ne v6, v9, :cond_34

    if-lt v2, v14, :cond_34

    .line 536
    iput v8, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v9, 0x3

    if-ne v12, v9, :cond_33

    .line 537
    aget-char v6, v5, v3

    const/16 v10, 0x78

    if-ne v6, v10, :cond_33

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v5, v6

    const/16 v10, 0x6d

    if-ne v6, v10, :cond_33

    add-int/lit8 v6, v3, 0x2

    aget-char v6, v5, v6

    const/16 v10, 0x6c

    if-ne v6, v10, :cond_33

    const/16 v6, 0x1e

    if-ne v1, v6, :cond_32

    add-int/lit8 v1, v14, 0x7

    if-le v2, v1, :cond_31

    .line 544
    aget-char v6, v5, v14

    const/16 v10, 0x76

    if-ne v6, v10, :cond_31

    add-int/lit8 v6, v14, 0x1

    aget-char v6, v5, v6

    if-ne v6, v13, :cond_31

    add-int/lit8 v6, v14, 0x2

    aget-char v6, v5, v6

    const/16 v10, 0x72

    if-ne v6, v10, :cond_31

    add-int/lit8 v6, v14, 0x3

    aget-char v6, v5, v6

    const/16 v10, 0x73

    if-ne v6, v10, :cond_31

    add-int/lit8 v6, v14, 0x4

    aget-char v6, v5, v6

    const/16 v10, 0x69

    if-ne v6, v10, :cond_31

    add-int/lit8 v6, v14, 0x5

    aget-char v6, v5, v6

    const/16 v10, 0x6f

    if-ne v6, v10, :cond_31

    add-int/lit8 v6, v14, 0x6

    aget-char v6, v5, v6

    const/16 v10, 0x6e

    if-eq v6, v10, :cond_11

    goto/16 :goto_1e

    .line 559
    :cond_11
    aget-char v6, v5, v1

    move v15, v6

    .line 561
    :goto_f
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_12

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_12

    .line 562
    aget-char v15, v5, v1

    goto :goto_f

    :cond_12
    move/from16 v18, v1

    const/16 v1, 0x3d

    if-eq v15, v1, :cond_14

    :cond_13
    :goto_10
    move v2, v8

    const/16 v1, 0x23

    goto/16 :goto_2a

    :cond_14
    add-int/lit8 v18, v18, 0x1

    .line 568
    aget-char v1, v5, v18

    .line 570
    :goto_11
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_16

    add-int/lit8 v6, v18, 0x1

    if-ge v6, v2, :cond_15

    .line 571
    aget-char v1, v5, v6

    move/from16 v18, v6

    goto :goto_11

    :cond_15
    move/from16 v18, v6

    :cond_16
    const/16 v6, 0x27

    if-eq v1, v6, :cond_17

    const/16 v6, 0x22

    if-eq v1, v6, :cond_17

    move v15, v1

    goto :goto_10

    :cond_17
    add-int/lit8 v18, v18, 0x1

    move v15, v1

    move/from16 v6, v18

    :goto_12
    if-ne v6, v2, :cond_18

    goto :goto_10

    .line 586
    :cond_18
    aget-char v15, v5, v6

    if-ne v15, v1, :cond_30

    add-int/lit8 v1, v18, 0x3

    if-ne v6, v1, :cond_19

    .line 590
    aget-char v1, v5, v18

    const/16 v14, 0x31

    if-ne v1, v14, :cond_19

    add-int/lit8 v1, v18, 0x1

    aget-char v1, v5, v1

    const/16 v14, 0x2e

    if-ne v1, v14, :cond_19

    add-int/lit8 v1, v18, 0x2

    aget-char v1, v5, v1

    const/16 v14, 0x30

    if-eq v1, v14, :cond_1a

    move v15, v1

    :cond_19
    const/16 v1, 0x31

    if-ne v15, v1, :cond_13

    move v1, v15

    :cond_1a
    :goto_13
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_1b

    .line 603
    aget-char v14, v5, v6

    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v14

    if-eqz v14, :cond_1b

    goto :goto_13

    :cond_1b
    add-int/lit8 v14, v6, 0x7

    if-le v2, v14, :cond_24

    .line 605
    aget-char v15, v5, v6

    if-ne v15, v13, :cond_24

    add-int/lit8 v15, v6, 0x1

    aget-char v15, v5, v15

    if-ne v15, v10, :cond_24

    add-int/lit8 v15, v6, 0x2

    aget-char v15, v5, v15

    const/16 v9, 0x63

    if-ne v15, v9, :cond_24

    add-int/lit8 v9, v6, 0x3

    aget-char v9, v5, v9

    const/16 v15, 0x6f

    if-ne v9, v15, :cond_24

    add-int/lit8 v9, v6, 0x4

    aget-char v9, v5, v9

    const/16 v15, 0x64

    if-ne v9, v15, :cond_24

    add-int/lit8 v9, v6, 0x5

    aget-char v9, v5, v9

    const/16 v15, 0x69

    if-ne v9, v15, :cond_24

    add-int/lit8 v9, v6, 0x6

    aget-char v9, v5, v9

    if-ne v9, v10, :cond_24

    aget-char v9, v5, v14

    const/16 v14, 0x67

    if-ne v9, v14, :cond_24

    add-int/lit8 v6, v6, 0x8

    .line 616
    aget-char v1, v5, v6

    move v15, v1

    .line 618
    :goto_14
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1c

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_1c

    .line 619
    aget-char v15, v5, v6

    goto :goto_14

    :cond_1c
    move/from16 v18, v6

    const/16 v1, 0x3d

    if-eq v15, v1, :cond_1d

    const-string v17, "bad \'encoding\' declaration"

    :goto_15
    move v2, v8

    goto/16 :goto_20

    :cond_1d
    add-int/lit8 v18, v18, 0x1

    .line 626
    aget-char v1, v5, v18

    move v15, v1

    .line 628
    :goto_16
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    add-int/lit8 v1, v18, 0x1

    if-ge v1, v2, :cond_1e

    .line 629
    aget-char v15, v5, v1

    move/from16 v18, v1

    goto :goto_16

    :cond_1e
    move/from16 v18, v1

    :cond_1f
    const/16 v1, 0x27

    if-eq v15, v1, :cond_20

    const/16 v1, 0x22

    if-eq v15, v1, :cond_20

    const-string v17, "bad \'encoding\' declaration"

    goto :goto_15

    :cond_20
    add-int/lit8 v9, v18, 0x1

    move v6, v9

    move v1, v15

    :goto_17
    if-ne v6, v2, :cond_21

    const-string v17, "bad \'encoding\' declaration"

    move v15, v1

    move v2, v8

    move/from16 v18, v9

    goto/16 :goto_20

    .line 646
    :cond_21
    aget-char v1, v5, v6

    if-ne v1, v15, :cond_23

    .line 650
    new-instance v14, Ljava/lang/String;

    sub-int v15, v6, v9

    invoke-direct {v14, v5, v9, v15}, Ljava/lang/String;-><init>([CII)V

    .line 651
    instance-of v9, v0, Lgnu/text/LineInputStreamReader;

    if-eqz v9, :cond_22

    .line 652
    move-object v9, v0

    check-cast v9, Lgnu/text/LineInputStreamReader;

    invoke-virtual {v9, v14}, Lgnu/text/LineInputStreamReader;->setCharset(Ljava/lang/String;)V

    :cond_22
    :goto_18
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_24

    .line 655
    aget-char v9, v5, v6

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_18

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_24
    add-int/lit8 v9, v6, 0x9

    if-le v2, v9, :cond_2e

    .line 658
    aget-char v14, v5, v6

    const/16 v15, 0x73

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x1

    aget-char v14, v5, v14

    const/16 v15, 0x74

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x2

    aget-char v14, v5, v14

    const/16 v15, 0x61

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x3

    aget-char v14, v5, v14

    if-ne v14, v10, :cond_2e

    add-int/lit8 v14, v6, 0x4

    aget-char v14, v5, v14

    const/16 v15, 0x64

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x5

    aget-char v14, v5, v14

    const/16 v15, 0x61

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x6

    aget-char v14, v5, v14

    const/16 v15, 0x6c

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x7

    aget-char v14, v5, v14

    const/16 v15, 0x6f

    if-ne v14, v15, :cond_2e

    add-int/lit8 v14, v6, 0x8

    aget-char v14, v5, v14

    if-ne v14, v10, :cond_2e

    aget-char v9, v5, v9

    if-ne v9, v13, :cond_2e

    add-int/lit8 v6, v6, 0xa

    .line 671
    aget-char v1, v5, v6

    move v15, v1

    .line 673
    :goto_19
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_25

    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_25

    .line 674
    aget-char v15, v5, v6

    goto :goto_19

    :cond_25
    move/from16 v18, v6

    const/16 v1, 0x3d

    if-eq v15, v1, :cond_26

    const-string v17, "bad \'standalone\' declaration"

    goto/16 :goto_15

    :cond_26
    add-int/lit8 v18, v18, 0x1

    .line 681
    aget-char v1, v5, v18

    move v15, v1

    .line 683
    :goto_1a
    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_28

    add-int/lit8 v1, v18, 0x1

    if-ge v1, v2, :cond_27

    .line 684
    aget-char v15, v5, v1

    move/from16 v18, v1

    goto :goto_1a

    :cond_27
    move/from16 v18, v1

    :cond_28
    const/16 v1, 0x27

    if-eq v15, v1, :cond_29

    const/16 v1, 0x22

    if-eq v15, v1, :cond_29

    const-string v17, "bad \'standalone\' declaration"

    goto/16 :goto_15

    :cond_29
    add-int/lit8 v18, v18, 0x1

    move v1, v15

    move/from16 v6, v18

    :goto_1b
    if-ne v6, v2, :cond_2a

    const-string v17, "bad \'standalone\' declaration"

    :goto_1c
    move v15, v1

    goto/16 :goto_15

    .line 701
    :cond_2a
    aget-char v1, v5, v6

    if-ne v1, v15, :cond_2d

    add-int/lit8 v9, v18, 0x3

    if-ne v6, v9, :cond_2b

    .line 705
    aget-char v9, v5, v18

    const/16 v14, 0x79

    if-ne v9, v14, :cond_2b

    add-int/lit8 v9, v18, 0x1

    aget-char v9, v5, v9

    if-ne v9, v13, :cond_2b

    add-int/lit8 v9, v18, 0x2

    aget-char v9, v5, v9

    const/16 v13, 0x73

    if-ne v9, v13, :cond_2b

    goto :goto_1d

    :cond_2b
    add-int/lit8 v9, v18, 0x2

    if-ne v6, v9, :cond_2c

    .line 711
    aget-char v9, v5, v18

    if-ne v9, v10, :cond_2c

    add-int/lit8 v9, v18, 0x1

    aget-char v9, v5, v9

    const/16 v10, 0x6f

    if-ne v9, v10, :cond_2c

    :goto_1d
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_2e

    .line 724
    aget-char v9, v5, v6

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2e

    goto :goto_1d

    :cond_2c
    const-string v17, "bad \'standalone\' declaration"

    goto :goto_1c

    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_2e
    move v15, v1

    if-eq v2, v6, :cond_2f

    const-string v17, "junk at end of xml declaration"

    move v2, v6

    goto :goto_1f

    :cond_2f
    move v9, v4

    move-object v10, v5

    const/4 v13, 0x1

    goto :goto_21

    :cond_30
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x3

    goto/16 :goto_12

    :cond_31
    :goto_1e
    const-string v17, "xml declaration without version"

    move v2, v14

    :goto_1f
    move/from16 v18, v2

    goto :goto_20

    :cond_32
    const-string v17, "<?xml must be at start of file"

    move v2, v8

    move/from16 v18, v14

    :goto_20
    const/16 v1, 0x24

    goto/16 :goto_2a

    :cond_33
    sub-int v6, v2, v14

    move-object/from16 v1, p1

    move-object v2, v5

    move v9, v4

    move v4, v12

    move-object v10, v5

    move v5, v14

    const/4 v13, 0x1

    .line 743
    invoke-virtual/range {v1 .. v6}, Lgnu/xml/XMLFilter;->processingInstructionFromParser([CIIII)V

    :goto_21
    move v2, v8

    move v3, v9

    move-object v5, v10

    const/4 v1, 0x1

    const/4 v6, 0x1

    const/16 v13, 0x9

    const/16 v18, -0x1

    goto/16 :goto_40

    :cond_34
    move v9, v4

    move-object v6, v5

    const/4 v5, 0x1

    if-ge v8, v9, :cond_35

    add-int/lit8 v2, v8, 0x1

    .line 751
    aget-char v15, v6, v8

    move v8, v2

    move-object v5, v6

    move v4, v9

    const/4 v6, 0x1

    const/16 v9, 0x3c

    goto/16 :goto_e

    :cond_35
    move-object v5, v6

    move v2, v8

    move/from16 v18, v14

    goto/16 :goto_29

    :pswitch_b
    move v9, v4

    move-object v6, v5

    const/4 v5, 0x1

    :goto_22
    if-ne v15, v10, :cond_38

    add-int/lit8 v4, v2, -0x1

    sub-int v12, v4, v3

    const/4 v4, 0x4

    if-lt v12, v4, :cond_36

    .line 763
    aget-char v4, v6, v3

    const/16 v8, 0x2d

    if-ne v4, v8, :cond_36

    add-int/lit8 v4, v3, 0x1

    aget-char v4, v6, v4

    if-ne v4, v8, :cond_36

    add-int/lit8 v4, v2, -0x2

    .line 767
    aget-char v4, v6, v4

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v2, -0x3

    aget-char v4, v6, v4

    if-ne v4, v8, :cond_39

    .line 770
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v12, -0x4

    .line 771
    invoke-virtual {v7, v6, v3, v1}, Lgnu/xml/XMLFilter;->commentFromParser([CII)V

    goto :goto_23

    :cond_36
    const/4 v4, 0x6

    if-lt v12, v4, :cond_37

    .line 775
    aget-char v4, v6, v3

    const/16 v8, 0x5b

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x1

    aget-char v4, v6, v4

    const/16 v8, 0x43

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x2

    aget-char v4, v6, v4

    const/16 v8, 0x44

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x3

    aget-char v4, v6, v4

    const/16 v8, 0x41

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x4

    aget-char v4, v6, v4

    const/16 v8, 0x54

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x5

    aget-char v4, v6, v4

    const/16 v8, 0x41

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v3, 0x6

    aget-char v4, v6, v4

    const/16 v8, 0x5b

    if-ne v4, v8, :cond_37

    add-int/lit8 v4, v2, -0x2

    .line 784
    aget-char v4, v6, v4

    const/16 v8, 0x5d

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v2, -0x3

    aget-char v4, v6, v4

    const/16 v8, 0x5d

    if-ne v4, v8, :cond_39

    .line 787
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v1, v3, 0x7

    add-int/lit8 v4, v2, -0xa

    sub-int/2addr v4, v3

    .line 788
    invoke-virtual {v7, v6, v1, v4}, Lgnu/xml/XMLFilter;->writeCDATA([CII)V

    :cond_37
    :goto_23
    move-object v5, v6

    move v3, v9

    const/4 v1, 0x1

    goto/16 :goto_29

    :cond_38
    add-int/lit8 v4, v3, 0x7

    if-ne v2, v4, :cond_39

    .line 798
    aget-char v4, v6, v3

    const/16 v8, 0x44

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v3, 0x1

    aget-char v4, v6, v4

    const/16 v8, 0x4f

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v3, 0x2

    aget-char v4, v6, v4

    const/16 v8, 0x43

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v3, 0x3

    aget-char v4, v6, v4

    const/16 v8, 0x54

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v3, 0x4

    aget-char v4, v6, v4

    const/16 v8, 0x59

    if-ne v4, v8, :cond_39

    add-int/lit8 v4, v3, 0x5

    aget-char v4, v6, v4

    const/16 v8, 0x50

    if-ne v4, v8, :cond_39

    const/16 v4, 0x45

    if-ne v15, v4, :cond_39

    const/16 v1, 0xf

    move-object v5, v6

    move v3, v9

    goto/16 :goto_29

    :cond_39
    if-ge v2, v9, :cond_3a

    add-int/lit8 v4, v2, 0x1

    .line 812
    aget-char v15, v6, v2

    move v2, v4

    goto/16 :goto_22

    :cond_3a
    move-object v5, v6

    goto/16 :goto_29

    :pswitch_c
    move v9, v4

    move-object v6, v5

    const/4 v5, 0x1

    add-int/lit8 v3, v2, -0x1

    const/4 v1, 0x5

    move-object v5, v6

    goto/16 :goto_2a

    :pswitch_d
    move v9, v4

    move-object v6, v5

    const/4 v5, 0x1

    if-gez v18, :cond_3b

    add-int/lit8 v4, v2, -0x1

    sub-int/2addr v4, v3

    shl-int/lit8 v18, v4, 0x1

    move v8, v2

    const/4 v2, 0x0

    goto :goto_24

    :cond_3b
    move v8, v2

    move/from16 v2, v19

    :goto_24
    const/16 v4, 0x27

    :goto_25
    if-eq v15, v4, :cond_40

    const/16 v4, 0x22

    if-ne v15, v4, :cond_3c

    goto :goto_27

    :cond_3c
    if-nez v2, :cond_3d

    const/16 v4, 0x5b

    if-ne v15, v4, :cond_3e

    or-int/lit8 v4, v18, 0x1

    :goto_26
    move/from16 v18, v4

    :cond_3d
    move-object v5, v6

    const/4 v14, 0x1

    goto :goto_28

    :cond_3e
    const/16 v4, 0x5d

    if-ne v15, v4, :cond_3f

    and-int/lit8 v4, v18, -0x2

    goto :goto_26

    :cond_3f
    if-ne v15, v10, :cond_3d

    and-int/lit8 v4, v18, 0x1

    if-nez v4, :cond_3d

    .line 852
    iput v8, v0, Lgnu/text/LineBufferedReader;->pos:I

    shr-int/lit8 v1, v18, 0x1

    add-int v10, v1, v3

    add-int/lit8 v1, v8, -0x1

    sub-int v13, v1, v10

    move-object/from16 v1, p1

    move-object v2, v6

    move v4, v12

    const/4 v14, 0x1

    move v5, v10

    move-object v10, v6

    move v6, v13

    .line 855
    invoke-virtual/range {v1 .. v6}, Lgnu/xml/XMLFilter;->emitDoctypeDecl([CIIII)V

    move v2, v8

    move v3, v9

    move-object v5, v10

    const/4 v1, 0x1

    const/4 v6, 0x1

    const/16 v13, 0x9

    const/16 v18, -0x1

    goto/16 :goto_2f

    :cond_40
    :goto_27
    move-object v5, v6

    const/4 v14, 0x1

    if-nez v2, :cond_41

    move v2, v15

    goto :goto_28

    :cond_41
    if-ne v2, v15, :cond_42

    const/4 v2, 0x0

    :cond_42
    :goto_28
    if-ge v8, v9, :cond_43

    add-int/lit8 v4, v8, 0x1

    .line 865
    aget-char v15, v5, v8

    move v8, v4

    move-object v6, v5

    const/16 v4, 0x27

    const/4 v5, 0x1

    goto :goto_25

    :cond_43
    move/from16 v19, v2

    move v2, v8

    goto :goto_29

    :pswitch_e
    move v9, v4

    const/4 v14, 0x1

    const/16 v1, 0x2f

    if-ne v15, v1, :cond_44

    const/16 v6, 0x13

    const/16 v1, 0x13

    :goto_29
    const/4 v6, 0x1

    goto/16 :goto_a

    :cond_44
    const/16 v1, 0x3f

    if-ne v15, v1, :cond_45

    const/16 v6, 0x18

    move v3, v2

    const/16 v1, 0x18

    goto :goto_29

    :cond_45
    const/16 v1, 0x21

    if-ne v15, v1, :cond_46

    const/16 v6, 0x14

    move v3, v2

    const/16 v1, 0x14

    goto :goto_29

    :cond_46
    add-int/lit8 v3, v2, -0x1

    move v4, v9

    const/4 v1, 0x3

    goto :goto_2a

    :pswitch_f
    move v9, v4

    const/4 v14, 0x1

    const/16 v1, 0x11

    add-int/lit8 v3, v2, -0x1

    :goto_2a
    const/4 v6, 0x1

    goto/16 :goto_38

    :pswitch_10
    move v9, v4

    const/16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x9

    if-ne v15, v4, :cond_47

    goto/16 :goto_a

    :cond_47
    if-eq v15, v14, :cond_49

    const/16 v4, 0xd

    if-eq v15, v4, :cond_49

    if-eq v15, v8, :cond_49

    const/16 v4, 0x2028

    if-ne v15, v4, :cond_48

    goto :goto_2b

    :cond_48
    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_41

    .line 372
    :cond_49
    :goto_2b
    invoke-virtual {v0, v6, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto/16 :goto_a

    :pswitch_11
    move v9, v4

    const/16 v4, 0x27

    if-eq v15, v4, :cond_4c

    const/16 v4, 0x22

    if-ne v15, v4, :cond_4a

    goto :goto_2d

    :cond_4a
    const/16 v4, 0x20

    if-eq v15, v4, :cond_9

    const/16 v4, 0x9

    if-eq v15, v4, :cond_9

    const/16 v4, 0xd

    if-eq v15, v4, :cond_9

    if-eq v15, v14, :cond_9

    if-eq v15, v8, :cond_9

    const/16 v4, 0x2028

    if-ne v15, v4, :cond_4b

    goto/16 :goto_a

    :cond_4b
    const-string v17, "missing or unquoted attribute value"

    :goto_2c
    move v4, v9

    goto/16 :goto_30

    :cond_4c
    :goto_2d
    const/16 v1, 0xc

    move/from16 v19, v15

    const/4 v1, 0x1

    const/16 v13, 0x9

    const/16 v16, 0xc

    goto/16 :goto_40

    :pswitch_12
    move v9, v4

    const/16 v16, 0xe

    const/16 v1, 0x2f

    if-ne v15, v1, :cond_4d

    .line 875
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 876
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 877
    invoke-virtual {v7, v1, v4, v4}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    const/16 v1, 0x1b

    :goto_2e
    const/16 v13, 0x9

    :goto_2f
    const/16 v19, 0x3c

    goto/16 :goto_40

    :cond_4d
    const/4 v4, 0x0

    if-ne v15, v10, :cond_4e

    .line 883
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 884
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    const/4 v1, 0x1

    goto :goto_2e

    :cond_4e
    add-int/lit8 v3, v2, -0x1

    move v4, v9

    const/16 v1, 0x9

    const/16 v9, 0x3c

    const/16 v19, 0x3c

    goto/16 :goto_0

    :pswitch_13
    move v9, v4

    const/4 v4, 0x0

    const/16 v10, 0x20

    if-eq v15, v10, :cond_9

    const/16 v13, 0x9

    if-eq v15, v13, :cond_6d

    const/16 v4, 0xd

    if-eq v15, v4, :cond_6d

    if-eq v15, v14, :cond_6d

    if-eq v15, v8, :cond_6d

    const/16 v4, 0x2028

    if-ne v15, v4, :cond_4f

    goto/16 :goto_40

    :cond_4f
    sub-int v1, v2, v12

    .line 895
    iput v1, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 896
    invoke-virtual {v7, v5, v3, v12}, Lgnu/xml/XMLFilter;->emitStartAttribute([CII)V

    const/16 v1, 0x3d

    if-ne v15, v1, :cond_50

    const/16 v1, 0xb

    move v3, v9

    goto/16 :goto_40

    .line 903
    :cond_50
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->emitEndAttributes()V

    const-string v17, "missing or misplaced \'=\' after attribute name"

    move v3, v9

    move v4, v3

    :goto_30
    const/16 v1, 0x24

    goto/16 :goto_38

    :pswitch_14
    move v9, v4

    const/16 v10, 0x20

    const/16 v13, 0x9

    .line 488
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    const/16 v1, 0x3b

    if-eq v15, v1, :cond_51

    const/16 v1, 0x77

    const-string v4, "missing \';\'"

    .line 490
    invoke-virtual {v7, v1, v4}, Lgnu/xml/XMLFilter;->error(CLjava/lang/String;)V

    .line 491
    :cond_51
    invoke-virtual {v7, v5, v3, v12}, Lgnu/xml/XMLFilter;->emitEntityReference([CII)V

    move v3, v9

    const/4 v1, 0x1

    goto/16 :goto_40

    :pswitch_15
    move v9, v4

    const/16 v10, 0x20

    const/16 v13, 0x9

    .line 929
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 930
    invoke-virtual {v7, v5, v3, v12}, Lgnu/xml/XMLFilter;->emitEndElement([CII)V

    const/16 v1, 0x1d

    goto/16 :goto_37

    :pswitch_16
    move v9, v4

    const/16 v10, 0x20

    const/16 v13, 0x9

    add-int/lit8 v12, v3, 0x1

    :goto_31
    const/16 v4, 0x61

    if-lt v15, v4, :cond_54

    const/16 v4, 0x7a

    if-le v15, v4, :cond_52

    goto :goto_33

    :cond_52
    const/16 v4, 0x2d

    :cond_53
    :goto_32
    const/4 v8, 0x4

    goto/16 :goto_36

    :cond_54
    :goto_33
    const/16 v4, 0x41

    if-lt v15, v4, :cond_55

    const/16 v4, 0x5a

    if-le v15, v4, :cond_52

    :cond_55
    const/16 v4, 0x5f

    if-eq v15, v4, :cond_52

    const/16 v4, 0x3a

    if-eq v15, v4, :cond_52

    const/16 v4, 0xc0

    if-lt v15, v4, :cond_5a

    const/16 v4, 0x2ff

    if-le v15, v4, :cond_52

    const/16 v4, 0x370

    if-lt v15, v4, :cond_5a

    const/16 v4, 0x1fff

    if-gt v15, v4, :cond_56

    const/16 v4, 0x37e

    if-ne v15, v4, :cond_52

    :cond_56
    const/16 v4, 0x200c

    if-lt v15, v4, :cond_5a

    const/16 v4, 0x200d

    if-le v15, v4, :cond_52

    const/16 v4, 0x2070

    if-lt v15, v4, :cond_57

    const/16 v4, 0x218f

    if-le v15, v4, :cond_52

    :cond_57
    const/16 v4, 0x2c00

    if-lt v15, v4, :cond_58

    const/16 v4, 0x2fef

    if-le v15, v4, :cond_52

    :cond_58
    const/16 v4, 0x3001

    if-lt v15, v4, :cond_59

    const v4, 0xd7ff

    if-le v15, v4, :cond_52

    :cond_59
    const v4, 0xf900

    if-lt v15, v4, :cond_5a

    const v4, 0xfffd

    if-le v15, v4, :cond_52

    :cond_5a
    if-le v2, v12, :cond_5b

    const/16 v4, 0x30

    if-lt v15, v4, :cond_5b

    const/16 v4, 0x39

    if-le v15, v4, :cond_52

    :cond_5b
    const/16 v4, 0x2e

    if-eq v15, v4, :cond_52

    const/16 v4, 0x2d

    if-eq v15, v4, :cond_53

    const/16 v8, 0xb7

    if-eq v15, v8, :cond_53

    const/16 v8, 0x300

    if-le v15, v8, :cond_5c

    const/16 v8, 0x36f

    if-le v15, v8, :cond_53

    const/16 v8, 0x203f

    if-lt v15, v8, :cond_5c

    const/16 v8, 0x2040

    if-gt v15, v8, :cond_5c

    goto :goto_32

    :cond_5c
    add-int/lit8 v1, v1, -0x1

    sub-int v12, v2, v12

    if-nez v12, :cond_6e

    const/16 v4, 0x8

    if-ne v1, v4, :cond_5d

    const-string v1, "missing or invalid attribute name"

    :goto_34
    move-object/from16 v17, v1

    goto/16 :goto_2c

    :cond_5d
    const/4 v4, 0x2

    if-eq v1, v4, :cond_5f

    const/4 v8, 0x4

    if-ne v1, v8, :cond_5e

    goto :goto_35

    :cond_5e
    const-string v1, "missing or invalid name"

    goto :goto_34

    :cond_5f
    :goto_35
    const-string v1, "missing or invalid element name"

    goto :goto_34

    :goto_36
    if-ge v2, v9, :cond_6d

    add-int/lit8 v14, v2, 0x1

    .line 437
    aget-char v15, v5, v2

    move v2, v14

    goto/16 :goto_31

    :pswitch_17
    move v9, v4

    const/16 v10, 0x20

    const/16 v13, 0x9

    sub-int v1, v2, v12

    .line 519
    iput v1, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 520
    invoke-virtual {v7, v5, v3, v12}, Lgnu/xml/XMLFilter;->emitStartElement([CII)V

    const/16 v1, 0xc

    :goto_37
    move v3, v9

    move v4, v3

    :goto_38
    const/16 v9, 0x3c

    goto/16 :goto_0

    :pswitch_18
    move v9, v4

    const/16 v10, 0x20

    const/16 v13, 0x9

    add-int/lit8 v3, v2, -0x1

    move v4, v3

    move/from16 v12, v19

    move v3, v2

    :goto_39
    if-ne v15, v12, :cond_60

    move/from16 v1, v16

    goto/16 :goto_3d

    :cond_60
    const/16 v10, 0x26

    if-ne v15, v10, :cond_61

    const/16 v1, 0x19

    goto/16 :goto_3d

    :cond_61
    const/16 v10, 0xd

    if-ne v15, v10, :cond_66

    sub-int v3, v2, v3

    .line 279
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v3, :cond_62

    .line 281
    invoke-virtual {v7, v5, v4, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    :cond_62
    if-ge v2, v9, :cond_65

    .line 284
    aget-char v15, v5, v2

    if-ne v15, v14, :cond_63

    add-int/lit8 v3, v2, 0x1

    move v4, v3

    goto :goto_3a

    .line 292
    :cond_63
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    if-ne v15, v8, :cond_64

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v3, 0x1

    .line 306
    :goto_3a
    invoke-virtual {v0, v6, v3}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    move/from16 v20, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v20

    goto :goto_3c

    .line 300
    :cond_64
    invoke-virtual {v0, v6, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    add-int/lit8 v3, v2, 0x1

    move v4, v2

    move v2, v3

    goto :goto_3f

    .line 310
    :cond_65
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    const/16 v1, 0x1c

    goto :goto_3e

    :cond_66
    if-eq v15, v8, :cond_68

    const/16 v10, 0x2028

    if-ne v15, v10, :cond_67

    goto :goto_3b

    :cond_67
    if-ne v15, v14, :cond_6a

    .line 328
    invoke-virtual {v0, v6, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    goto :goto_3c

    :cond_68
    :goto_3b
    sub-int v3, v2, v3

    add-int/lit8 v10, v2, -0x1

    .line 318
    iput v10, v0, Lgnu/text/LineBufferedReader;->pos:I

    if-lez v3, :cond_69

    .line 320
    invoke-virtual {v7, v5, v4, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 321
    :cond_69
    invoke-virtual/range {p1 .. p1}, Lgnu/xml/XMLFilter;->linefeedFromParser()V

    .line 322
    invoke-virtual {v0, v6, v2}, Lgnu/text/LineBufferedReader;->incrLineNumber(II)V

    add-int/lit8 v3, v2, 0x1

    move v4, v2

    :cond_6a
    :goto_3c
    if-ne v2, v9, :cond_6c

    add-int/lit8 v3, v3, -0x1

    :goto_3d
    sub-int v3, v2, v3

    if-lez v3, :cond_6b

    .line 340
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 341
    invoke-virtual {v7, v5, v4, v3}, Lgnu/xml/XMLFilter;->textFromParser([CII)V

    .line 343
    :cond_6b
    array-length v4, v5

    :goto_3e
    move/from16 v19, v12

    move v12, v3

    move v3, v4

    goto :goto_40

    :cond_6c
    add-int/lit8 v10, v2, 0x1

    .line 335
    aget-char v15, v5, v2

    move v2, v10

    :goto_3f
    const/16 v10, 0x20

    goto/16 :goto_39

    :pswitch_19
    move v9, v4

    const/16 v13, 0x9

    const/16 v1, 0x1f

    :cond_6d
    :goto_40
    if-ge v2, v9, :cond_6f

    add-int/lit8 v4, v2, 0x1

    .line 949
    aget-char v15, v5, v2

    move v2, v4

    :cond_6e
    :goto_41
    move v4, v9

    goto/16 :goto_38

    :cond_6f
    sub-int v4, v2, v3

    if-lez v4, :cond_70

    .line 957
    :try_start_0
    iput v3, v0, Lgnu/text/LineBufferedReader;->pos:I

    add-int/lit8 v8, v4, 0x1

    .line 958
    invoke-virtual {v0, v8}, Lgnu/text/LineBufferedReader;->mark(I)V

    .line 960
    :cond_70
    iput v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 961
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v8

    if-gez v8, :cond_73

    if-eq v1, v6, :cond_72

    const/16 v4, 0x1c

    if-ne v1, v4, :cond_71

    goto :goto_42

    :cond_71
    const/16 v1, 0x25

    goto :goto_41

    :cond_72
    :goto_42
    return-void

    :cond_73
    if-lez v4, :cond_74

    .line 971
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->reset()V

    .line 972
    invoke-virtual {v0, v4}, Lgnu/text/LineBufferedReader;->skip(I)I

    goto :goto_43

    .line 975
    :cond_74
    invoke-virtual/range {p0 .. p0}, Lgnu/text/LineBufferedReader;->unread_quick()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 981
    :goto_43
    iget v2, v0, Lgnu/text/LineBufferedReader;->pos:I

    .line 982
    iget-object v5, v0, Lgnu/text/LineBufferedReader;->buffer:[C

    .line 984
    iget v3, v0, Lgnu/text/LineBufferedReader;->limit:I

    if-lez v4, :cond_75

    sub-int v4, v2, v4

    goto :goto_44

    :cond_75
    move v4, v3

    :goto_44
    add-int/lit8 v8, v2, 0x1

    .line 986
    aget-char v15, v5, v2

    move v2, v8

    const/16 v9, 0x3c

    move/from16 v20, v4

    move v4, v3

    move/from16 v3, v20

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 979
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_16
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_d
        :pswitch_16
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_10
        :pswitch_16
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_10
        :pswitch_16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    invoke-static {p0}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0, p1}, Lgnu/text/LineInputStreamReader;->setName(Ljava/lang/Object;)V

    .line 136
    :cond_0
    invoke-static {p0, p2, p3}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 137
    invoke-virtual {p0}, Lgnu/text/LineInputStreamReader;->close()V

    return-void
.end method

.method public static parse(Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Lgnu/text/Path;->openInputStream(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lgnu/xml/XMLParser;->parse(Ljava/io/InputStream;Ljava/lang/Object;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    return-void
.end method
