.class public Lgnu/kawa/xml/HexBinary;
.super Lgnu/kawa/xml/BinaryObject;
.source "HexBinary.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    return-void
.end method

.method static forHexDigit(I)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x41

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method static parseHexBinary(Ljava/lang/String;)[B
    .locals 8

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x1

    .line 24
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    mul-int/lit8 v3, v2, 0x2

    .line 27
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v6, v3, 0x1

    .line 28
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v7, -0x1

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    if-gez v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    int-to-byte v3, v4

    .line 34
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid hexBinary character at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v1

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "hexBinary string length not a multiple of 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;
    .locals 1

    .line 14
    new-instance v0, Lgnu/kawa/xml/HexBinary;

    invoke-static {p0}, Lgnu/kawa/xml/HexBinary;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/HexBinary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5

    .line 46
    iget-object v0, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 47
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 50
    aget-byte v3, v0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 51
    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    and-int/lit8 v3, v3, 0xf

    .line 52
    invoke-static {v3}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method
