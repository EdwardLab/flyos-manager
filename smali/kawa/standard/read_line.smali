.class public Lkawa/standard/read_line;
.super Ljava/lang/Object;
.source "read_line.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Lgnu/text/LineBufferedReader;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    if-gez v0, :cond_0

    .line 13
    sget-object p0, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    return-object p0

    .line 14
    :cond_0
    iget v0, p0, Lgnu/text/LineBufferedReader;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 16
    iget v2, p0, Lgnu/text/LineBufferedReader;->limit:I

    .line 17
    iget-object v3, p0, Lgnu/text/LineBufferedReader;->buffer:[C

    move v4, v0

    :goto_0
    const-string v5, "concat"

    const/4 v6, -0x1

    const-string v7, "peek"

    const/16 v8, 0xd

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0xa

    if-ge v4, v2, :cond_9

    add-int/lit8 v12, v4, 0x1

    .line 23
    aget-char v4, v3, v4

    if-eq v4, v8, :cond_2

    if-ne v4, v11, :cond_1

    goto :goto_1

    :cond_1
    move v4, v12

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr v12, v6

    const-string v13, "trim"

    if-eq p1, v13, :cond_5

    if-ne p1, v7, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v5, :cond_4

    if-ne v4, v11, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 41
    iput v12, p0, Lgnu/text/LineBufferedReader;->pos:I

    goto :goto_4

    :cond_4
    move v4, v12

    goto :goto_5

    :cond_5
    :goto_2
    if-ne p1, v7, :cond_6

    const/4 v6, 0x0

    :cond_6
    if-ne v4, v11, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v4, v12, 0x1

    if-ge v4, v2, :cond_4

    .line 34
    aget-char p1, v3, v4

    if-ne p1, v11, :cond_8

    const/4 v1, 0x2

    :cond_8
    :goto_3
    add-int/2addr v1, v12

    .line 37
    iput v1, p0, Lgnu/text/LineBufferedReader;->pos:I

    .line 45
    :goto_4
    new-instance p0, Lgnu/lists/FString;

    sub-int/2addr v12, v0

    invoke-direct {p0, v3, v0, v12}, Lgnu/lists/FString;-><init>([CII)V

    return-object p0

    .line 51
    :cond_9
    :goto_5
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v12, 0x64

    invoke-direct {v2, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    if-le v4, v0, :cond_a

    sub-int v12, v4, v0

    .line 53
    invoke-virtual {v2, v3, v0, v12}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 54
    :cond_a
    iput v4, p0, Lgnu/text/LineBufferedReader;->pos:I

    const-string v0, "split"

    if-ne p1, v7, :cond_b

    const/16 v3, 0x50

    goto :goto_7

    :cond_b
    if-eq p1, v5, :cond_d

    if-ne p1, v0, :cond_c

    goto :goto_6

    :cond_c
    const/16 v3, 0x49

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v3, 0x41

    .line 58
    :goto_7
    invoke-virtual {p0, v2, v3}, Lgnu/text/LineBufferedReader;->readLine(Ljava/lang/StringBuffer;C)V

    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-ne p1, v0, :cond_12

    if-nez p0, :cond_e

    const/4 v6, 0x0

    goto :goto_9

    :cond_e
    add-int/lit8 v3, p0, -0x1

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_10

    :cond_f
    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    if-eq v3, v11, :cond_11

    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    if-le v3, v9, :cond_f

    add-int/lit8 v3, p0, -0x2

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_f

    const/4 v6, 0x2

    :goto_8
    sub-int/2addr p0, v6

    .line 78
    :cond_12
    :goto_9
    new-instance v3, Lgnu/lists/FString;

    invoke-direct {v3, v2, v10, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    if-ne p1, v0, :cond_13

    .line 81
    new-instance p1, Lgnu/lists/FString;

    sub-int/2addr p0, v6

    invoke-direct {p1, v2, p0, v6}, Lgnu/lists/FString;-><init>(Ljava/lang/StringBuffer;II)V

    new-array p0, v9, [Ljava/lang/Object;

    aput-object v3, p0, v10

    aput-object p1, p0, v1

    .line 83
    new-instance p1, Lgnu/mapping/Values;

    invoke-direct {p1, p0}, Lgnu/mapping/Values;-><init>([Ljava/lang/Object;)V

    return-object p1

    :cond_13
    return-object v3
.end method
