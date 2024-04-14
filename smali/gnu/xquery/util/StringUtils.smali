.class public Lgnu/xquery/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static ERROR_VALUE:Ljava/lang/String; = "<error>"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 339
    sget-object v0, Lgnu/kawa/xml/XIntegerType;->integerType:Lgnu/kawa/xml/XIntegerType;

    invoke-virtual {v0, p0}, Lgnu/kawa/xml/XIntegerType;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgnu/math/IntNum;

    .line 340
    invoke-virtual {p0}, Lgnu/math/IntNum;->intValue()I

    move-result p0

    if-lez p0, :cond_3

    const v0, 0xd7ff

    const/high16 v1, 0x10000

    if-le p0, v0, :cond_1

    const v0, 0xe000

    if-lt p0, v0, :cond_3

    const v0, 0xfffd

    if-le p0, v0, :cond_0

    if-lt p0, v1, :cond_3

    :cond_0
    const v0, 0x10ffff

    if-gt p0, v0, :cond_3

    :cond_1
    if-lt p0, v1, :cond_2

    sub-int v0, p0, v1

    shr-int/lit8 v0, v0, 0xa

    const v1, 0xd800

    add-int/2addr v0, v1

    int-to-char v0, v0

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit16 p0, p0, 0x3ff

    const v0, 0xdc00

    add-int/2addr p0, v0

    :cond_2
    int-to-char p0, p0

    .line 350
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void

    .line 344
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "codepoints-to-string: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid XML character [FOCH0001]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static asDouble(Ljava/lang/Object;)D
    .locals 2

    .line 58
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static codepointEqual(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "codepoint-equal"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 578
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    .line 580
    :cond_2
    :goto_1
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0
.end method

.method public static codepointsToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 358
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_1

    .line 360
    check-cast p0, Lgnu/mapping/Values;

    .line 361
    invoke-virtual {p0}, Lgnu/mapping/Values;->startPos()I

    move-result v1

    .line 362
    :goto_0
    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    invoke-virtual {p0, v1}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_0

    .line 366
    :cond_1
    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->appendCodepoint(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 367
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    :cond_0
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    sget-object v0, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-eq p3, v0, :cond_2

    return-object p3

    .line 31
    :cond_2
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/net/URI;

    if-nez v0, :cond_5

    instance-of v0, p0, Lgnu/text/Path;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 42
    :cond_3
    new-instance v0, Lgnu/mapping/WrongType;

    sget-object v1, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    if-ne p3, v1, :cond_4

    const-string p3, "xs:string"

    goto :goto_0

    :cond_4
    const-string p3, "xs:string?"

    :goto_0
    invoke-direct {v0, p1, p2, p0, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .locals 1

    .line 314
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_4

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p1, v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 318
    sget-object p2, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 319
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_2

    .line 320
    invoke-static {}, Lgnu/math/IntNum;->minusOne()Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-lez p0, :cond_3

    invoke-static {}, Lgnu/math/IntNum;->one()Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    :goto_0
    return-object p0

    .line 316
    :cond_4
    :goto_1
    sget-object p0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p0
.end method

.method public static concat$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string v0, "concat"

    const/4 v1, 0x1

    .line 292
    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 294
    invoke-static {p1, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    .line 295
    invoke-static {p1}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    .line 305
    aget-object v2, p2, p1

    add-int/lit8 v3, p1, 0x2

    invoke-static {v2, v0, v3}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    .line 306
    invoke-static {v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "contains"

    const/4 v1, 0x1

    const-string v2, ""

    .line 246
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 247
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public static encodeForUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "encode-for-uri"

    const/4 v1, 0x1

    const-string v2, ""

    .line 372
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x55

    .line 373
    invoke-static {p0, v0}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static endsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "ends-with"

    const/4 v1, 0x1

    const-string v2, ""

    .line 262
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 263
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public static escapeHtmlUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "escape-html-uri"

    const/4 v1, 0x1

    const-string v2, ""

    .line 384
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x48

    .line 385
    invoke-static {p0, v0}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static iriToUri(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "iri-to-uru"

    const/4 v1, 0x1

    const-string v2, ""

    .line 378
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x49

    .line 379
    invoke-static {p0, v0}, Lgnu/text/URIPath;->encodeForUri(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lowerCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "lower-case"

    const/4 v1, 0x1

    const-string v2, ""

    .line 48
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 11

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0x5c

    const/16 v4, 0x73

    if-ltz v0, :cond_9

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x69

    if-eq v5, v6, :cond_8

    const/16 v6, 0x6d

    if-eq v5, v6, :cond_7

    if-eq v5, v4, :cond_6

    const/16 v4, 0x78

    if-ne v5, v4, :cond_5

    .line 436
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 437
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    add-int/lit8 v8, v6, 0x1

    .line 441
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    if-ge v8, v5, :cond_0

    .line 444
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v8, 0x1

    .line 445
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v10, v8

    move v8, v6

    move v6, v10

    goto :goto_2

    :cond_0
    const/16 v9, 0x5b

    if-ne v6, v9, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/16 v9, 0x5d

    if-ne v6, v9, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    if-nez v7, :cond_3

    .line 451
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    .line 453
    :cond_3
    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    move v6, v8

    goto :goto_1

    .line 455
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 461
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown \'replace\' flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    or-int/lit8 v2, v2, 0x20

    goto :goto_0

    :cond_7
    or-int/lit8 v2, v2, 0x8

    goto :goto_0

    :cond_8
    or-int/lit8 v2, v2, 0x42

    goto :goto_0

    :cond_9
    const-string p1, "{Is"

    .line 465
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_e

    .line 467
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 468
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_a
    :goto_4
    if-ge v1, v0, :cond_d

    add-int/lit8 v5, v1, 0x1

    .line 471
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_c

    add-int/lit8 v6, v5, 0x4

    if-ge v6, v0, :cond_c

    .line 474
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v5, 0x1

    .line 475
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 476
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v6, 0x70

    if-eq v5, v6, :cond_b

    const/16 v6, 0x50

    if-ne v5, v6, :cond_a

    .line 477
    :cond_b
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x49

    if-ne v5, v7, :cond_a

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_a

    .line 482
    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 483
    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v5, 0x6e

    .line 484
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x3

    goto :goto_4

    .line 489
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, v5

    goto :goto_4

    .line 491
    :cond_d
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 493
    :cond_e
    invoke-static {p0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 499
    invoke-static {p0, p1, v0}, Lgnu/xquery/util/StringUtils;->matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matches(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "matches"

    const/4 v1, 0x1

    const-string v2, ""

    .line 505
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 506
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static normalizeSpace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9

    const-string v0, "normalize-space"

    const/4 v1, 0x1

    const-string v2, ""

    .line 390
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_7

    .line 396
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 397
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    if-nez v4, :cond_0

    if-nez v6, :cond_0

    if-lez v5, :cond_0

    .line 400
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    if-lez v6, :cond_5

    const/16 v8, 0x20

    if-eqz v4, :cond_2

    .line 408
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    if-gt v6, v1, :cond_3

    if-eq v5, v1, :cond_3

    add-int/lit8 v6, v5, -0x1

    .line 409
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_4

    .line 410
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :cond_4
    :goto_1
    const/4 v6, 0x0

    :cond_5
    if-eqz v4, :cond_6

    .line 414
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    .line 417
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    if-lez v6, :cond_9

    goto :goto_3

    :cond_9
    move-object v2, p0

    :goto_3
    return-object v2
.end method

.method public static normalizeUnicode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "NFC"

    .line 586
    invoke-static {p0, v0}, Lgnu/xquery/util/StringUtils;->normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeUnicode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "normalize-unicode"

    const/4 v1, 0x1

    const-string v2, ""

    .line 591
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 593
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 620
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "normalize-unicode: unicode string normalization not available"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 515
    invoke-static {p0, p1, p2, v0}, Lgnu/xquery/util/StringUtils;->replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static replace(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "replace"

    const/4 v1, 0x1

    const-string v2, ""

    .line 522
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 523
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 526
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_2

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 529
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 531
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid replacement string [FORX0004]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 534
    :cond_3
    invoke-static {p1, p3}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startsWith(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "starts-with"

    const/4 v1, 0x1

    const-string v2, ""

    .line 254
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 255
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

.method public static stringJoin(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 269
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    sget-object v1, Lgnu/xquery/util/StringUtils;->ERROR_VALUE:Ljava/lang/String;

    const-string v2, "string-join"

    const/4 v3, 0x2

    invoke-static {p1, v2, v3, v1}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 275
    :goto_0
    invoke-static {p0, v2}, Lgnu/mapping/Values;->nextIndex(Ljava/lang/Object;I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 277
    invoke-static {p0, v2}, Lgnu/mapping/Values;->nextValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 278
    sget-object v6, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    if-lez v1, :cond_1

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_1
    invoke-static {v5}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x1

    move v2, v4

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringLength(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "string-length"

    const/4 v1, 0x1

    const-string v2, ""

    .line 125
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v4, 0xd800

    if-lt v1, v4, :cond_0

    const v4, 0xdc00

    if-ge v1, v4, :cond_0

    if-ge v3, v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {v2}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object p0

    return-object p0
.end method

.method public static stringPad(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 228
    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->numberValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, ""

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    return-object v0

    .line 233
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Invalid string-pad count"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string v1, "string-pad"

    const/4 v2, 0x1

    .line 236
    invoke-static {p0, v1, v2, v0}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 238
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int v0, v0, p1

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 239
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static stringToCodepoints$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .locals 5

    const-string v0, "string-to-codepoints"

    const/4 v1, 0x1

    const-string v2, ""

    .line 325
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 327
    iget-object p1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 330
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v3, 0xd800

    if-lt v1, v3, :cond_0

    const v4, 0xdc00

    if-ge v1, v4, :cond_0

    if-ge v2, v0, :cond_0

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x400

    add-int/lit8 v3, v2, 0x1

    .line 332
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    move v2, v3

    .line 333
    :cond_0
    invoke-interface {p1, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    move v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 65
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_0

    return-object v2

    :cond_0
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v3

    double-to-int p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    const-string v1, "substring"

    const/4 v3, 0x1

    .line 71
    invoke-static {p0, v1, v3, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    if-lt v0, v1, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v3, v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v4, 0xd800

    if-lt v0, v4, :cond_3

    const v4, 0xdc00

    if-ge v0, v4, :cond_3

    if-ge v3, v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    move v0, v3

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string v0, "substring"

    const/4 v1, 0x1

    const-string v2, ""

    .line 87
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 91
    invoke-static {p1}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    .line 92
    invoke-static {p2}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide p1

    add-double/2addr p1, v5

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    add-double/2addr p1, v3

    const-wide/16 v5, 0x0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_0

    move-wide v3, v5

    :cond_0
    int-to-double v5, v0

    cmpl-double v1, p1, v5

    if-lez v1, :cond_1

    move-wide p1, v5

    :cond_1
    cmpg-double v1, p1, v3

    if-gtz v1, :cond_2

    return-object v2

    :cond_2
    double-to-int v1, v3

    double-to-int p1, p1

    sub-int/2addr p1, v1

    const/4 p2, 0x0

    :goto_0
    add-int/lit8 v1, v1, -0x1

    const v3, 0xdc00

    const v4, 0xd800

    if-ltz v1, :cond_5

    if-lt p2, v0, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v5, p2, 0x1

    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_4

    if-ge p2, v3, :cond_4

    if-ge v5, v0, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    move p2, v5

    goto :goto_0

    :cond_5
    move v1, p2

    :goto_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_8

    if-lt v1, v0, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v4, :cond_7

    if-ge v1, v3, :cond_7

    if-ge v5, v0, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    move v1, v5

    goto :goto_1

    .line 120
    :cond_8
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static substringAfter(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "substring-after"

    const/4 v1, 0x1

    const-string v2, ""

    .line 152
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 153
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 159
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    add-int/2addr p1, v0

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static substringBefore(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "substring-before"

    const/4 v1, 0x1

    const-string v2, ""

    .line 140
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    .line 141
    invoke-static {p1, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 1

    const-string v0, ""

    .line 542
    invoke-static {p0, p1, v0, p2}, Lgnu/xquery/util/StringUtils;->tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V

    return-void
.end method

.method public static tokenize$X(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lgnu/mapping/CallContext;)V
    .locals 3

    const-string v0, "tokenize"

    const/4 v1, 0x1

    const-string v2, ""

    .line 549
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 550
    iget-object p3, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 551
    invoke-static {p1, p2}, Lgnu/xquery/util/StringUtils;->makePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 552
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 558
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    .line 561
    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 564
    :cond_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    .line 565
    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 566
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    if-eq p2, v0, :cond_2

    goto :goto_0

    .line 568
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pattern matches empty string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static translate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "translate"

    const/4 v2, 0x1

    const-string v3, ""

    .line 165
    invoke-static {v0, v1, v2, v3}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-static/range {p1 .. p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 167
    instance-of v4, v3, Lgnu/kawa/xml/UntypedAtomic;

    const-string v5, "xs:string"

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 172
    invoke-static/range {p2 .. p2}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    instance-of v7, v6, Lgnu/kawa/xml/UntypedAtomic;

    if-nez v7, :cond_3

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    goto :goto_1

    .line 174
    :cond_2
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3, v0, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v4, :cond_4

    return-object v2

    .line 179
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 180
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_d

    add-int/lit8 v9, v8, 0x1

    .line 186
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v10, 0xdc00

    const v11, 0xd800

    if-lt v8, v11, :cond_5

    if-ge v8, v10, :cond_5

    if-ge v9, v1, :cond_5

    add-int/lit8 v12, v9, 0x1

    .line 189
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v17, v12

    move v12, v9

    move/from16 v9, v17

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-ge v13, v4, :cond_b

    add-int/lit8 v15, v13, 0x1

    .line 193
    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_6

    if-ge v13, v10, :cond_6

    if-ge v15, v4, :cond_6

    add-int/lit8 v16, v15, 0x1

    .line 196
    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move v7, v15

    move/from16 v15, v16

    goto :goto_5

    :cond_6
    const/4 v7, 0x0

    :goto_5
    if-ne v13, v8, :cond_a

    if-ne v7, v12, :cond_a

    const/4 v7, 0x0

    :goto_6
    if-lt v7, v6, :cond_7

    goto :goto_9

    :cond_7
    add-int/lit8 v8, v7, 0x1

    .line 203
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_8

    if-ge v7, v10, :cond_8

    if-ge v8, v6, :cond_8

    add-int/lit8 v12, v8, 0x1

    .line 206
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move/from16 v17, v12

    move v12, v8

    move/from16 v8, v17

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    if-nez v14, :cond_9

    move v8, v7

    goto :goto_8

    :cond_9
    add-int/lit8 v14, v14, -0x1

    move v7, v8

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move v13, v15

    goto :goto_4

    .line 218
    :cond_b
    :goto_8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz v12, :cond_c

    .line 220
    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    :goto_9
    move v8, v9

    goto :goto_2

    .line 223
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "upper-case"

    const/4 v1, 0x1

    const-string v2, ""

    .line 53
    invoke-static {p0, v0, v1, v2}, Lgnu/xquery/util/StringUtils;->coerceToString(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
