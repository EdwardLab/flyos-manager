.class public Lgnu/kawa/xml/Base64Binary;
.super Lgnu/kawa/xml/BinaryObject;
.source "Base64Binary.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13

    .line 21
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x3d

    if-ge v2, v0, :cond_1

    .line 26
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 27
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    if-eq v5, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x3

    const/4 v2, 0x4

    .line 30
    div-int/2addr v3, v2

    .line 31
    new-array v5, v3, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v6, v0, :cond_b

    .line 39
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x41

    if-lt v11, v12, :cond_2

    const/16 v12, 0x5a

    if-gt v11, v12, :cond_2

    add-int/lit8 v11, v11, -0x41

    goto :goto_2

    :cond_2
    const/16 v12, 0x61

    if-lt v11, v12, :cond_3

    const/16 v12, 0x7a

    if-gt v11, v12, :cond_3

    add-int/lit8 v11, v11, -0x61

    add-int/lit8 v11, v11, 0x1a

    goto :goto_2

    :cond_3
    const/16 v12, 0x30

    if-lt v11, v12, :cond_4

    const/16 v12, 0x39

    if-gt v11, v12, :cond_4

    add-int/lit8 v11, v11, -0x30

    add-int/lit8 v11, v11, 0x34

    goto :goto_2

    :cond_4
    const/16 v12, 0x2b

    if-ne v11, v12, :cond_5

    const/16 v11, 0x3e

    goto :goto_2

    :cond_5
    const/16 v12, 0x2f

    if-ne v11, v12, :cond_6

    const/16 v11, 0x3f

    goto :goto_2

    .line 51
    :cond_6
    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_3

    :cond_7
    if-ne v11, v4, :cond_8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v11, -0x1

    :goto_2
    if-ltz v11, :cond_a

    if-gtz v8, :cond_a

    shl-int/lit8 v10, v10, 0x6

    add-int/2addr v10, v11

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v2, :cond_9

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v11, v10, 0x10

    int-to-byte v11, v11

    .line 66
    aput-byte v11, v5, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v11, v10, 0x8

    int-to-byte v11, v11

    .line 67
    aput-byte v11, v5, v7

    add-int/lit8 v7, v9, 0x1

    int-to-byte v11, v10

    .line 68
    aput-byte v11, v5, v9

    move v9, v7

    const/4 v7, 0x0

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal character in base64Binary string at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    add-int/2addr v7, v8

    const/4 p1, 0x1

    if-lez v7, :cond_c

    if-ne v7, v2, :cond_f

    shl-int v0, p1, v8

    sub-int/2addr v0, p1

    and-int/2addr v0, v10

    if-nez v0, :cond_f

    add-int/lit8 v0, v9, 0x3

    sub-int/2addr v0, v8

    if-ne v0, v3, :cond_f

    goto :goto_4

    :cond_c
    if-ne v9, v3, :cond_f

    :goto_4
    const/4 v0, 0x2

    if-eq v8, p1, :cond_e

    if-eq v8, v0, :cond_d

    goto :goto_5

    :cond_d
    shr-int/lit8 p1, v10, 0x4

    int-to-byte p1, p1

    .line 100
    aput-byte p1, v5, v9

    goto :goto_5

    :cond_e
    add-int/lit8 p1, v9, 0x1

    shl-int/lit8 v1, v10, 0xa

    int-to-byte v1, v1

    .line 96
    aput-byte v1, v5, v9

    shr-int/lit8 v0, v10, 0x2

    int-to-byte v0, v0

    .line 97
    aput-byte v0, v5, p1

    .line 104
    :goto_5
    iput-object v5, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    return-void

    .line 92
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;
    .locals 1

    .line 17
    new-instance v0, Lgnu/kawa/xml/Base64Binary;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/Base64Binary;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Base64Binary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 6

    .line 109
    iget-object v0, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 110
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const-string v4, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    if-ge v2, v1, :cond_1

    .line 114
    aget-byte v5, v0, v2

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    .line 117
    rem-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_0

    shr-int/lit8 v5, v3, 0x12

    and-int/lit8 v5, v5, 0x3f

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0x3f

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v5, v3, 0x3f

    .line 122
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 125
    :cond_1
    rem-int/lit8 v1, v1, 0x3

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    shr-int/lit8 v1, v3, 0xa

    and-int/lit8 v1, v1, 0x3f

    .line 133
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shr-int/lit8 v1, v3, 0x4

    and-int/lit8 v1, v1, 0x3f

    .line 134
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v0, v3, 0x2

    and-int/lit8 v0, v0, 0x3f

    .line 135
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x3d

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    shr-int/lit8 v0, v3, 0x2

    and-int/lit8 v0, v0, 0x3f

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v0, v3, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "=="

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-object p1
.end method
