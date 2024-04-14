.class public Lgnu/bytecode/MiscAttr;
.super Lgnu/bytecode/Attribute;
.source "MiscAttr.java"


# instance fields
.field data:[B

.field dataLength:I

.field offset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2

    .line 27
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 21
    iput p3, p0, Lgnu/bytecode/MiscAttr;->offset:I

    .line 22
    iput p4, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 32
    iget v0, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 5

    .line 91
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 92
    invoke-virtual {p0}, Lgnu/bytecode/MiscAttr;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    .line 95
    iget-object v2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v2, v2, v1

    .line 96
    rem-int/lit8 v3, v1, 0x14

    const/16 v4, 0x20

    if-nez v3, :cond_1

    .line 97
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 98
    :cond_1
    invoke-virtual {p1, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    and-int/lit8 v2, v2, 0xf

    .line 100
    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    add-int/lit8 v1, v1, 0x1

    .line 102
    rem-int/lit8 v2, v1, 0x14

    if-eqz v2, :cond_2

    if-ne v1, v0, :cond_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected put1(I)V
    .locals 4

    .line 58
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    if-nez v0, :cond_0

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 59
    iput-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    goto :goto_0

    .line 60
    :cond_0
    iget v1, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 62
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 63
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput-object v2, p0, Lgnu/bytecode/MiscAttr;->data:[B

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method protected put2(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 71
    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->put1(I)V

    int-to-byte p1, p1

    .line 72
    invoke-virtual {p0, p1}, Lgnu/bytecode/MiscAttr;->put1(I)V

    return-void
.end method

.method protected put2(II)V
    .locals 2

    .line 77
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte p2, p2

    .line 78
    aput-byte p2, v0, p1

    return-void
.end method

.method protected u1()I
    .locals 2

    .line 46
    iget v0, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->u1(I)I

    move-result v0

    return v0
.end method

.method protected u1(I)I
    .locals 1

    .line 36
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method protected u2()I
    .locals 2

    .line 51
    iget v0, p0, Lgnu/bytecode/MiscAttr;->offset:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/MiscAttr;->u2(I)I

    move-result v0

    .line 52
    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    return v0
.end method

.method protected u2(I)I
    .locals 2

    .line 41
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v1, p1

    return v1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lgnu/bytecode/MiscAttr;->data:[B

    iget v1, p0, Lgnu/bytecode/MiscAttr;->offset:I

    iget v2, p0, Lgnu/bytecode/MiscAttr;->dataLength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    return-void
.end method
