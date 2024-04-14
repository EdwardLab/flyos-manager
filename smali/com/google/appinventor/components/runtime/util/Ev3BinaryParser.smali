.class public Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;
    }
.end annotation


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B = 0x40t

.field private static Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B = 0x3t

.field private static hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:B = 0x3ft

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B = -0x80t

.field private static qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B = 0x2t

.field private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B = 0x1ft

.field private static vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B = 0x1t

.field private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B = 0x20t


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs encodeDirectCommand(BZIILjava/lang/String;[Ljava/lang/Object;)[B
    .locals 8

    if-ltz p2, :cond_15

    const/16 v0, 0x3ff

    if-gt p2, v0, :cond_15

    if-ltz p3, :cond_15

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_15

    .line 507
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    array-length v1, p5

    if-ne v0, v1, :cond_15

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 514
    :goto_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 515
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 516
    aget-object v4, p5, v2

    const/16 v5, 0x63

    const/16 v6, -0x1f

    const/16 v7, 0x1f

    if-eq v3, v5, :cond_c

    const/16 v5, 0x67

    if-eq v3, v5, :cond_7

    const/16 v5, 0x6c

    if-eq v3, v5, :cond_2

    const/16 v5, 0x73

    if-ne v3, v5, :cond_1

    .line 565
    instance-of v3, v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 569
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "US-ASCII"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 571
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 566
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 576
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal format string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 535
    :cond_2
    instance-of v3, v4, Ljava/lang/Byte;

    if-eqz v3, :cond_4

    .line 536
    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-gt v3, v7, :cond_3

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-lt v3, v6, :cond_3

    .line 537
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV0(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 539
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV1(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 541
    :cond_4
    instance-of v3, v4, Ljava/lang/Short;

    if-eqz v3, :cond_5

    .line 542
    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV2(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 543
    :cond_5
    instance-of v3, v4, Ljava/lang/Integer;

    if-eqz v3, :cond_6

    .line 544
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLV4(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 546
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 550
    :cond_7
    instance-of v3, v4, Ljava/lang/Byte;

    if-eqz v3, :cond_9

    .line 551
    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-gt v3, v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-lt v3, v6, :cond_8

    .line 552
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV0(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 554
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV1(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 556
    :cond_9
    instance-of v3, v4, Ljava/lang/Short;

    if-eqz v3, :cond_a

    .line 557
    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV2(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 558
    :cond_a
    instance-of v3, v4, Ljava/lang/Integer;

    if-eqz v3, :cond_b

    .line 559
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeGV4(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 561
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 520
    :cond_c
    instance-of v3, v4, Ljava/lang/Byte;

    if-eqz v3, :cond_e

    .line 521
    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-gt v3, v7, :cond_d

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    if-lt v3, v6, :cond_d

    .line 522
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC0(B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 524
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC1(B)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_e
    instance-of v3, v4, Ljava/lang/Short;

    if-eqz v3, :cond_f

    .line 527
    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC2(S)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_f
    instance-of v3, v4, Ljava/lang/Integer;

    if-eqz v3, :cond_10

    .line 529
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->encodeLC4(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 531
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_11
    const/4 p4, 0x4

    .line 582
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 583
    array-length v2, v2

    add-int/2addr p4, v2

    goto :goto_2

    .line 586
    :cond_12
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 587
    sget-object p5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_3

    :cond_13
    const/16 p1, -0x80

    .line 588
    :goto_3
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x2

    new-array p5, p1, [B

    int-to-byte v2, p2

    aput-byte v2, p5, v1

    ushr-int/lit8 p2, p2, 0x8

    and-int/lit8 p2, p2, 0x3

    shl-int/lit8 p1, p3, 0x2

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x1

    aput-byte p1, p5, p2

    .line 590
    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {p4, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 594
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 595
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 597
    :cond_14
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    .line 508
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static encodeGV0(I)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 438
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

    and-int/2addr p0, v1

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr p0, v1

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeGV1(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 442
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeGV2(I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 447
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeGV4(I)[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 453
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLC0(B)[B
    .locals 3

    const/16 v0, -0x1f

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 391
    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:B

    and-int/2addr p0, v2

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-object v0

    .line 389
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Encoded value must be in range [0, 127]"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeLC1(B)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 395
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLC2(S)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 400
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLC4(I)[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 406
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    int-to-byte v1, v1

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLV0(I)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 415
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:B

    and-int/2addr p0, v1

    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLV1(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 419
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLV2(I)[B
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 424
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x2

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static encodeLV4(I)[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 430
    sget-byte v1, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:B

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:B

    or-int/2addr v1, v2

    sget-byte v2, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:B

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    const/4 v1, 0x4

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static varargs encodeSystemCommand(BZ[Ljava/lang/Object;)[B
    .locals 8

    .line 465
    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "Parameters should be one of the class types: Byte, Short, Integer, String"

    const/4 v5, 0x1

    if-ge v3, v0, :cond_4

    aget-object v6, p2, v3

    .line 466
    instance-of v7, v6, Ljava/lang/Byte;

    if-eqz v7, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    :cond_0
    instance-of v7, v6, Ljava/lang/Short;

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 470
    :cond_1
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 472
    :cond_2
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 473
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 479
    :cond_4
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 480
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v5, -0x7f

    .line 481
    :goto_2
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 485
    array-length p0, p2

    const/4 p1, 0x0

    :goto_3
    if-ge p1, p0, :cond_a

    aget-object v1, p2, p1

    .line 486
    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_6

    .line 487
    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 488
    :cond_6
    instance-of v3, v1, Ljava/lang/Short;

    if-eqz v3, :cond_7

    .line 489
    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 490
    :cond_7
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 491
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 492
    :cond_8
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 494
    :try_start_0
    check-cast v1, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 496
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-ASCII string encoding is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 500
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 503
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method public static varargs pack(Ljava/lang/String;[Ljava/lang/Object;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "(?<=\\D)"

    move-object/from16 v2, p0

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 57
    array-length v2, v1

    new-array v3, v2, [Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 62
    :goto_0
    array-length v8, v1

    const/16 v12, 0x4c

    const/16 v13, 0x46

    const/16 v14, 0x42

    const-string v15, "Illegal format string"

    if-ge v5, v8, :cond_10

    .line 63
    aget-object v8, v1, v5

    .line 64
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    const/4 v9, 0x1

    add-int/lit8 v10, v16, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 68
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eq v11, v9, :cond_1

    .line 70
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {v8, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v8, 0x1

    const/4 v11, 0x0

    :goto_1
    if-eq v10, v14, :cond_f

    if-eq v10, v13, :cond_e

    if-eq v10, v12, :cond_d

    const/16 v12, 0x53

    if-eq v10, v12, :cond_b

    const/16 v12, 0x62

    if-eq v10, v12, :cond_a

    const/16 v9, 0x66

    if-eq v10, v9, :cond_9

    const/16 v9, 0x6c

    if-eq v10, v9, :cond_8

    const/16 v9, 0x73

    if-eq v10, v9, :cond_6

    const/16 v9, 0x78

    if-eq v10, v9, :cond_5

    const/16 v9, 0x48

    if-eq v10, v9, :cond_4

    const/16 v9, 0x49

    if-eq v10, v9, :cond_e

    const/16 v9, 0x68

    if-eq v10, v9, :cond_3

    const/16 v9, 0x69

    if-ne v10, v9, :cond_2

    goto :goto_2

    .line 149
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    shl-int/lit8 v9, v8, 0x1

    goto :goto_3

    :cond_4
    shl-int/lit8 v9, v8, 0x1

    goto :goto_5

    :cond_5
    add-int/2addr v7, v8

    goto :goto_8

    .line 133
    :cond_6
    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_7

    goto :goto_6

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    shl-int/lit8 v9, v8, 0x3

    goto :goto_3

    :cond_9
    :goto_2
    shl-int/lit8 v9, v8, 0x2

    :goto_3
    add-int/2addr v7, v9

    goto :goto_4

    :cond_a
    add-int/2addr v7, v8

    :goto_4
    add-int/2addr v6, v8

    goto :goto_8

    :cond_b
    if-nez v11, :cond_c

    .line 144
    aget-object v11, v0, v6

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v7, v11

    goto :goto_7

    .line 142
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    shl-int/lit8 v9, v8, 0x3

    goto :goto_5

    :cond_e
    shl-int/lit8 v9, v8, 0x2

    :goto_5
    add-int/2addr v7, v9

    goto :goto_7

    :cond_f
    :goto_6
    add-int/2addr v7, v8

    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 152
    :goto_8
    new-instance v9, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;

    invoke-direct {v9, v10, v8}, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;-><init>(CI)V

    aput-object v9, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 155
    :cond_10
    array-length v1, v0

    if-ne v6, v1, :cond_21

    .line 160
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 161
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_9
    if-ge v5, v2, :cond_20

    .line 163
    aget-object v7, v3, v5

    .line 164
    iget-char v8, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:C

    if-eq v8, v14, :cond_1d

    if-eq v8, v13, :cond_1c

    if-eq v8, v12, :cond_1b

    const-string v9, "US-ASCII"

    const/16 v10, 0x53

    if-eq v8, v10, :cond_1a

    const/16 v11, 0x62

    if-eq v8, v11, :cond_19

    const/16 v15, 0x66

    if-eq v8, v15, :cond_18

    const/16 v10, 0x6c

    if-eq v8, v10, :cond_17

    const/16 v10, 0x73

    if-eq v8, v10, :cond_16

    const/16 v10, 0x78

    if-eq v8, v10, :cond_15

    const/16 v9, 0x48

    if-eq v8, v9, :cond_14

    const/16 v10, 0x49

    if-eq v8, v10, :cond_13

    const/16 v10, 0x68

    if-eq v8, v10, :cond_12

    const/16 v10, 0x69

    if-eq v8, v10, :cond_11

    goto/16 :goto_15

    :cond_11
    const/4 v8, 0x0

    .line 197
    :goto_a
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1f

    .line 198
    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_12
    const/16 v10, 0x69

    const/4 v8, 0x0

    .line 183
    :goto_b
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1f

    .line 184
    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/Short;

    invoke-virtual {v9}, Ljava/lang/Short;->shortValue()S

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_13
    const/16 v10, 0x69

    const/4 v8, 0x0

    .line 204
    :goto_c
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1e

    .line 205
    aget-object v9, v0, v6

    check-cast v9, [I

    aget v9, v9, v8

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_14
    const/16 v10, 0x69

    const/4 v8, 0x0

    .line 190
    :goto_d
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1e

    .line 191
    aget-object v9, v0, v6

    check-cast v9, [S

    aget-short v9, v9, v8

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_15
    const/16 v10, 0x69

    const/4 v8, 0x0

    .line 166
    :goto_e
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1f

    .line 167
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_16
    const/16 v8, 0x48

    const/16 v10, 0x69

    .line 240
    :try_start_0
    aget-object v7, v0, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_14

    .line 242
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_17
    const/16 v10, 0x69

    const/4 v9, 0x0

    .line 211
    :goto_f
    iget v8, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v9, v8, :cond_1f

    .line 212
    aget-object v8, v0, v6

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    const/16 v10, 0x69

    const/16 v11, 0x62

    goto :goto_f

    :cond_18
    const/4 v8, 0x0

    .line 225
    :goto_10
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1f

    .line 226
    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_19
    const/16 v15, 0x66

    const/4 v8, 0x0

    .line 171
    :goto_11
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1f

    .line 172
    aget-object v9, v0, v6

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1a
    const/16 v15, 0x66

    .line 249
    :try_start_1
    aget-object v7, v0, v6

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_14

    .line 251
    :catch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    const/16 v15, 0x66

    const/4 v8, 0x0

    .line 218
    :goto_12
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1e

    .line 219
    aget-object v9, v0, v6

    check-cast v9, [J

    aget-wide v10, v9, v8

    invoke-virtual {v1, v10, v11}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1c
    const/16 v15, 0x66

    const/4 v8, 0x0

    .line 232
    :goto_13
    iget v9, v7, Lcom/google/appinventor/components/runtime/util/Ev3BinaryParser$a;->size:I

    if-ge v8, v9, :cond_1e

    .line 233
    aget-object v9, v0, v6

    check-cast v9, [F

    aget v9, v9, v8

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1d
    const/16 v15, 0x66

    .line 178
    aget-object v7, v0, v6

    check-cast v7, [B

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_1e
    :goto_14
    add-int/lit8 v6, v6, 0x1

    :cond_1f
    :goto_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 258
    :cond_20
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 156
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unpack(Ljava/lang/String;[B)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "(?<=\\D)"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 265
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 267
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_18

    aget-object v4, p0, v3

    .line 270
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 272
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "Illegal format string"

    if-le v7, v6, :cond_1

    .line 274
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v4, 0x1

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x24

    if-eq v5, v7, :cond_15

    const/16 v7, 0x42

    if-eq v5, v7, :cond_13

    const/16 v7, 0x46

    if-eq v5, v7, :cond_11

    const/16 v7, 0x4c

    if-eq v5, v7, :cond_f

    const/16 v7, 0x53

    if-eq v5, v7, :cond_c

    const/16 v6, 0x62

    if-eq v5, v6, :cond_b

    const/16 v6, 0x66

    if-eq v5, v6, :cond_a

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_9

    const/16 v6, 0x73

    if-eq v5, v6, :cond_8

    const/16 v6, 0x78

    if-eq v5, v6, :cond_7

    const/16 v6, 0x48

    if-eq v5, v6, :cond_5

    const/16 v6, 0x49

    if-eq v5, v6, :cond_3

    const/16 v6, 0x68

    if-eq v5, v6, :cond_2

    const/16 v6, 0x69

    if-ne v5, v6, :cond_16

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_14

    .line 311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_14

    .line 299
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 315
    :cond_3
    new-array v5, v4, [I

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v4, :cond_4

    .line 317
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 318
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 303
    :cond_5
    new-array v5, v4, [S

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_6

    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    aput-short v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_5

    .line 306
    :cond_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_14

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 346
    :cond_8
    new-array v5, v4, [B

    .line 347
    invoke-virtual {p1, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 349
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_d

    .line 351
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_14

    .line 323
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_14

    .line 335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_14

    .line 288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_c
    if-nez v6, :cond_e

    .line 359
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 362
    :goto_a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    if-eqz v5, :cond_d

    int-to-char v5, v5

    .line 364
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 369
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 357
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_f
    new-array v5, v4, [J

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v4, :cond_10

    .line 329
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 330
    :cond_10
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 339
    :cond_11
    new-array v5, v4, [F

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v4, :cond_12

    .line 341
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 342
    :cond_12
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 292
    :cond_13
    new-array v5, v4, [B

    .line 293
    invoke-virtual {p1, v5, v2, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_15
    if-nez v6, :cond_17

    .line 376
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_16

    .line 377
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 380
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :cond_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
